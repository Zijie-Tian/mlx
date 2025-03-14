# Copyright © 2023-2024 Apple Inc.

from dataclasses import dataclass
from typing import Any, Dict, Optional, Union
from pathlib import Path
import json
import logging

import mlx.core as mx
import mlx.nn as nn

from base import BaseModelArgs, create_attention_mask, scaled_dot_product_attention
from rope_utils import initialize_rope
import time

def weight_quant(weight: mx.array, num_bits: int = 1) -> mx.array:
    dtype = weight.dtype
    weight = weight.astype(mx.float32)
    s = 1 / mx.maximum(mx.abs(weight).mean(), 1e-5)  # 替换clip为mx.maximum
    result = mx.minimum(mx.maximum((weight * s).round(), -1), 1) / s  # 替换clip
    return result.astype(dtype)

def input_tokens_quant(x: mx.array, num_bits: int = 8) -> mx.array:
    dtype = x.dtype
    x = x.astype(mx.float32)
    Qn = - (2 ** (num_bits - 1))
    Qp = (2 ** (num_bits - 1)) - 1
    # 使用mx.maximum替换clip
    s = Qp / mx.maximum(mx.abs(x).max(axis=-1, keepdims=True), 1e-5)
    # 使用mx.minimum/maximum组合替换clip
    result = mx.minimum(mx.maximum((x * s).round(), Qn), Qp) / s
    return result.astype(dtype)

class BitLinear(nn.Linear):
    def __init__(
        self,
        input_dims: int,
        output_dims: int,
        weight_bits: int = 1,
        input_bits: int = 8,
        bias: bool = True,
    ):
        super().__init__(input_dims, output_dims, bias=bias)
        self.weight_bits = weight_bits
        self.input_bits = input_bits

    def __call__(self, x: mx.array) -> mx.array:
        # 输入量化（带梯度截断）
        quant_input = x + mx.stop_gradient(input_tokens_quant(x, self.input_bits) - x)
        
        # 权重量化（带梯度截断）
        quant_weight = self.weight + mx.stop_gradient(
            weight_quant(self.weight, self.weight_bits) - self.weight
        )
        
        # 执行线性计算
        out = mx.matmul(quant_input, quant_weight.T)
        
        # 添加偏置项（如果存在）
        if "bias" in self:
            out += self.bias
            
        return out


@dataclass
class ModelArgs(BaseModelArgs):
    model_type: str
    hidden_size: int
    num_hidden_layers: int
    intermediate_size: int
    num_attention_heads: int
    rms_norm_eps: float
    vocab_size: int
    head_dim: Optional[int] = None
    max_position_embeddings: Optional[int] = None
    num_key_value_heads: Optional[int] = None
    attention_bias: bool = False
    mlp_bias: bool = False
    rope_theta: float = 10000
    rope_traditional: bool = False
    rope_scaling: Optional[Dict[str, Union[float, str]]] = None
    tie_word_embeddings: bool = True

    def __post_init__(self):
        if self.num_key_value_heads is None:
            self.num_key_value_heads = self.num_attention_heads


class Attention(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()

        dim = args.hidden_size
        self.n_heads = n_heads = args.num_attention_heads
        self.n_kv_heads = n_kv_heads = args.num_key_value_heads

        self.head_dim = head_dim = args.head_dim or args.hidden_size // n_heads

        self.scale = head_dim**-0.5
        if hasattr(args, "attention_bias"):
            attention_bias = args.attention_bias
        else:
            attention_bias = False

        self.q_proj = nn.TMACLinear(dim, n_heads * head_dim, bias=attention_bias)
        self.k_proj = nn.TMACLinear(dim, n_kv_heads * head_dim, bias=attention_bias)
        self.v_proj = nn.TMACLinear(dim, n_kv_heads * head_dim, bias=attention_bias)
        self.o_proj = nn.TMACLinear(n_heads * head_dim, dim, bias=attention_bias)

        self.rope = initialize_rope(
            self.head_dim,
            args.rope_theta,
            args.rope_traditional,
            args.rope_scaling,
            args.max_position_embeddings,
        )

    def __call__(
        self,
        x: mx.array,
        mask: Optional[mx.array] = None,
        cache: Optional[Any] = None,
    ) -> mx.array:
        B, L, D = x.shape

        queries, keys, values = self.q_proj(x), self.k_proj(x), self.v_proj(x)

        # Prepare the queries, keys and values for the attention computation
        queries = queries.reshape(B, L, self.n_heads, -1).transpose(0, 2, 1, 3)
        keys = keys.reshape(B, L, self.n_kv_heads, -1).transpose(0, 2, 1, 3)
        values = values.reshape(B, L, self.n_kv_heads, -1).transpose(0, 2, 1, 3)

        # import pdb; pdb.set_trace()

        if cache is not None:
            queries = self.rope(queries, offset=cache.offset)
            keys = self.rope(keys, offset=cache.offset)
            keys, values = cache.update_and_fetch(keys, values)
        else:
            queries = self.rope(queries)
            keys = self.rope(keys)

        # import pdb; pdb.set_trace()

        output = scaled_dot_product_attention(
            queries, keys, values, cache=cache, scale=self.scale, mask=mask
        )

        output = output.transpose(0, 2, 1, 3).reshape(B, L, -1)
        # import pdb; pdb.set_trace()

        return self.o_proj(output)


class MLP(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()

        dim = args.hidden_size
        hidden_dim = args.intermediate_size
        if hasattr(args, "mlp_bias"):
            mlp_bias = args.mlp_bias
        else:
            mlp_bias = False

        self.gate_proj = nn.TMACLinear(dim, hidden_dim, bias=mlp_bias)
        self.down_proj = nn.TMACLinear(hidden_dim, dim, bias=mlp_bias)
        self.up_proj = nn.TMACLinear(dim, hidden_dim, bias=mlp_bias)

    def __call__(self, x) -> mx.array:
        return self.down_proj(nn.silu(self.gate_proj(x)) * self.up_proj(x))


class TransformerBlock(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()
        self.num_attention_heads = args.num_attention_heads
        self.hidden_size = args.hidden_size
        self.self_attn = Attention(args)
        self.mlp = MLP(args)
        self.input_layernorm = nn.RMSNorm(args.hidden_size, eps=args.rms_norm_eps)
        self.post_attention_layernorm = nn.RMSNorm(
            args.hidden_size, eps=args.rms_norm_eps
        )
        self.args = args

    def __call__(
        self,
        x: mx.array,
        mask: Optional[mx.array] = None,
        cache: Optional[Any] = None,
    ) -> mx.array:
        r = self.self_attn(self.input_layernorm(x), mask, cache)
        h = x + r
        r = self.mlp(self.post_attention_layernorm(h))
        out = h + r
        return out


class BitNetModel(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()
        self.args = args
        self.vocab_size = args.vocab_size
        self.num_hidden_layers = args.num_hidden_layers
        assert self.vocab_size > 0
        self.embed_tokens = nn.Embedding(args.vocab_size, args.hidden_size)
        self.layers = [
            TransformerBlock(args=args) for _ in range(args.num_hidden_layers)
        ]
        self.norm = nn.RMSNorm(args.hidden_size, eps=args.rms_norm_eps)

    def __call__(
        self,
        inputs: mx.array,
        mask: mx.array = None,
        cache=None,
    ):
        h = self.embed_tokens(inputs)

        if mask is None:
            mask = create_attention_mask(h, cache)

        if cache is None:
            cache = [None] * len(self.layers)

        for layer, c in zip(self.layers, cache):
            h = layer(h, mask, cache=c)

        return self.norm(h)


class Model(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()
        self.args = args
        self.model_type = args.model_type
        self.model = BitNetModel(args)
        if not args.tie_word_embeddings:
            self.lm_head = nn.Linear(args.hidden_size, args.vocab_size, bias=False)
        print("BitNet Model initialized !!!")

    def __call__(
        self,
        inputs: mx.array,
        mask: mx.array = None,
        cache=None,
    ):
        out = self.model(inputs, mask, cache)
        if self.args.tie_word_embeddings:
            out = self.model.embed_tokens.as_linear(out)
        else:
            out = self.lm_head(out)
        return out

    def sanitize(self, weights):
        # Remove unused precomputed rotary freqs
        return {
            k: v for k, v in weights.items() if "self_attn.rotary_emb.inv_freq" not in k
        }

    @property
    def layers(self):
        return self.model.layers


def load_config(model_path: Path) -> dict:
    try:
        with open(model_path / "config.json", "r") as f:
            config = json.load(f)
    except FileNotFoundError:
        logging.error(f"Config file not found in {model_path}")
        raise
    return config

if __name__ == '__main__':
    generation_stream = mx.new_stream(mx.cpu)
    model_path = "/Users/tianzijie/hf_models/bitnet_b1_58-3B"
    
    config =  load_config(Path(model_path))
    
    # print(config)
    
    model_config = ModelArgs.from_dict(config)
    
    model = Model(model_config)
        
    input_tokens = mx.array([[1, 2, 3, 4]], dtype=mx.int32)
    print("Input tokens:", input_tokens)
    
    import pdb; pdb.set_trace()
    

    warmup_iters = 3
    test_iters = 100

    # Warmup uncompiled attention layer
    for _ in range(warmup_iters):
        with mx.stream(generation_stream):
            output_unc = model(input_tokens)
        mx.eval(output_unc)

    # Test uncompiled attention layer multiple times
    times_unc = []
    for _ in range(test_iters):
        start = time.time()
        with mx.stream(generation_stream):
            output_unc = model(input_tokens)
        mx.eval(output_unc)
        times_unc.append(time.time() - start)
    avg_time_unc = sum(times_unc) / len(times_unc)
    print("Non-compiled average end-to-end time:", avg_time_unc)

    # Assume mx.compile can compile the Attention layer
    compiled_model = mx.compile(model)

    # Warmup compiled attention layer
    for _ in range(warmup_iters):
        with mx.stream(generation_stream):
            output_comp = compiled_model(input_tokens)
        mx.eval(output_comp)

    # Test compiled attention layer multiple times
    times_comp = []
    for _ in range(test_iters):
        start = time.time()
        with mx.stream(generation_stream):
            output_comp = compiled_model(input_tokens)
        mx.eval(output_comp)
        times_comp.append(time.time() - start)
    avg_time_comp = sum(times_comp) / len(times_comp)
    print("Compiled average end-to-end time:", avg_time_comp)

    print("Attention layer done !!!")


