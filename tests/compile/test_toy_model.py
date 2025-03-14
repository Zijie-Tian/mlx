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
from tokenizer_utils import load_tokenizer
import time
import random

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
    model_bias: bool = False
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
        if hasattr(args, "model_bias"):
            model_bias = args.model_bias
        else:
            model_bias = False

        self.gate_proj = nn.TMACLinear(dim, hidden_dim, bias=model_bias)
        self.down_proj = nn.TMACLinear(hidden_dim, dim, bias=model_bias)
        self.up_proj = nn.TMACLinear(dim, hidden_dim, bias=model_bias)

    def __call__(self, x) -> mx.array:
        return self.down_proj(nn.silu(self.gate_proj(x)) * self.up_proj(x))


class TransformerBlock(nn.Module):
    def __init__(self, args: ModelArgs):
        super().__init__()
        self.num_attention_heads = args.num_attention_heads
        self.hidden_size = args.hidden_size
        self.self_attn = Attention(args)
        self.model = MLP(args)
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
        r = self.model(self.post_attention_layernorm(h))
        out = h + r
        return out
    
class ToyModel(nn.Module):
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
        
        self.cpu_stream = mx.new_stream(mx.cpu)
        self.gpu_stream = mx.new_stream(mx.gpu)
        
        # @partial(mx.compile, inputs=(mask, cache))
        # def _models_forward(x):
        #     for layer in self.layers:
        #         x = layer(x)
        #     return x

        # self._models_forward = mx.compile(_models_forward)

    def __call__(
        self,
        inputs: mx.array,
    ):
        # with mx.stream(self.gpu_stream):
        #     h = self.embed_tokens(inputs)
        #     h = mx.expand_dims(h, axis=0)
        
        h = mx.zeros((1, 1, 3200), dtype=mx.float16)
        
        for layer in self.layers:
            h = layer(h)

        return h
    
def load_config(model_path: Path) -> dict:
    try:
        with open(model_path / "config.json", "r") as f:
            config = json.load(f)
    except FileNotFoundError:
        logging.error(f"Config file not found in {model_path}")
        raise
    return config

if __name__ == "__main__":
    generation_stream = mx.new_stream(mx.cpu)
    model_path = "/Users/tianzijie/mlx/bitnet_b1_58-3B"
    
    config =  load_config(Path(model_path))
    tokenizer = load_tokenizer(Path(model_path))
        
    model_config = ModelArgs.from_dict(config)
    
    print(model_config)

    model = ToyModel(model_config)
    
    def class_predicate(p, m):
        if isinstance(m, nn.TMACLinear) and not isinstance(m, nn.Embedding):
            return True

    nn.quantize(model, 
                group_size = config["quantization"]["group_size"], 
                bits = config["quantization"]["bits"], 
                class_predicate = class_predicate
            )
    
    input_ids = tokenizer.encode("Hello, world!")
    
    mx.eval(input_ids)
    
    # activation = mx.random.uniform(
    #     shape=(1, 1, 3200),
    #     dtype=mx.float16,
    # )
    
    import pdb; pdb.set_trace()
    
    # Warmup iterations on generation_stream
    warmup_iterations = 5
    for _ in range(warmup_iterations):
        with mx.stream(generation_stream):
            out = model(input_ids)
    
    # Multiple test iterations on generation_stream
    test_iterations = 100
    times = []
    for _ in range(test_iterations):
        with mx.stream(generation_stream):
            start = time.time()
            out = model(input_ids)
            mx.eval(out)
            end = time.time()
            times.append(end - start)
    
    print("All times:", times)
    avg_time = sum(times) / len(times) * 1000
    print(f"Average inference time over {test_iterations} iterations: {avg_time:.6f} msec.")
        
    # Compilation and first inference measurement
    with mx.stream(generation_stream):
        start_compile = time.time()
        compiled_model = mx.compile(model)
        mx.eval(compiled_model(input_ids))
        end_compile = time.time()
    compile_time = (end_compile - start_compile) * 1000
    print(f"Compilation and first inference after compile took: {compile_time:.6f} msec.")

    # Warmup iterations for compiled model
    warmup_iterations = 5
    for _ in range(warmup_iterations):
        with mx.stream(generation_stream):
            mx.eval(compiled_model(input_ids))

    # Multiple test iterations for compiled model
    test_iterations = 100
    compiled_times = []
    for _ in range(test_iterations):
        with mx.stream(generation_stream):
            start = time.time()
            input_ids = [random.randint(0, 1000) for _ in range(5)]
            mx.eval(compiled_model(input_ids))
            end = time.time()
            compiled_times.append(end - start)
    avg_compiled_time = sum(compiled_times) / len(compiled_times) * 1000
    print("All compiled times:", compiled_times)
    print(f"Average inference time for compiled model over {test_iterations} iterations: {avg_compiled_time:.6f} msec.")

    import pdb; pdb.set_trace()
    

