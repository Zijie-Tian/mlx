# Copyright © 2023-2024 Apple Inc.

import math
from typing import Callable, Optional, Union

import mlx.core as mx
from mlx.nn.layers.base import Module
from mlx.utils import tree_map_with_path
from typing import Tuple, Optional

def quantize(
    model: Module,
    group_size: int = 64,
    bits: int = 4,
    class_predicate: Optional[Callable[[str, Module], Union[bool, dict]]] = None,
):
    """Quantize the sub-modules of a module according to a predicate.

    By default all layers that define a ``to_quantized(group_size, bits)``
    method will be quantized. Both :obj:`Linear` and :obj:`Embedding` layers
    will be quantized. Note also, the module is updated in-place.

    Args:
        model (mlx.nn.Module): The model whose leaf modules may be quantized.
        group_size (int): The quantization group size (see
           :func:`mlx.core.quantize`). Default: ``64``.
        bits (int): The number of bits per parameter (see
           :func:`mlx.core.quantize`). Default: ``4``.
        class_predicate (Optional[Callable]): A callable which receives the
          :obj:`Module` path and :obj:`Module` itself and returns ``True`` or a
          dict of params for `to_quantized` if it should be quantized and
          ``False`` otherwise. If ``None``, then all layers that define a
          ``to_quantized(group_size, bits)`` method are quantized.
          Default: ``None``.
    """
    class_predicate = class_predicate or (lambda _, m: hasattr(m, "to_quantized"))

    def _maybe_quantize(path, m):
        if bool_or_params := class_predicate(path, m):
            if hasattr(m, "to_quantized"):
                if isinstance(bool_or_params, bool):
                    return m.to_quantized(group_size=group_size, bits=bits)
                elif isinstance(bool_or_params, dict):
                    return m.to_quantized(**bool_or_params)
                else:
                    raise ValueError(
                        "``class_predicate`` must return a bool"
                        " or a dict of parameters to pass to ``to_quantized``"
                    )
            else:
                raise ValueError(f"Unable to quantize model of type {type(m)}")
        else:
            return m

    leaves = model.leaf_modules()
    leaves = tree_map_with_path(_maybe_quantize, leaves, is_leaf=Module.is_module)
    model.update_modules(leaves)


class QuantizedEmbedding(Module):
    """The same as :obj:`Embedding` but with a  quantized weight matrix.

    :obj:`QuantizedEmbedding` also provides a :meth:`from_embedding`
    classmethod to convert embedding layers to :obj:`QuantizedEmbedding`
    layers.

    Args:
        num_embeddings (int): How many possible discrete tokens can we embed.
           Usually called the vocabulary size.
        dims (int): The dimensionality of the embeddings.
        group_size (int, optional): The group size to use for the quantized
            weight. See :func:`~mlx.core.quantize`. Default: ``64``.
        bits (int, optional): The bit width to use for the quantized weight.
            See :func:`~mlx.core.quantize`. Default: ``4``.
    """

    def __init__(
        self,
        num_embeddings: int,
        dims: int,
        group_size: int = 64,
        bits: int = 4,
    ):
        super().__init__()

        # Quantization config
        self.group_size = group_size
        self.bits = bits

        # Initialize the quantized weight
        scale = math.sqrt(1 / dims)
        weight = mx.random.normal(shape=(num_embeddings, dims), scale=scale)
        self.weight, self.scales, self.biases = mx.quantize(weight, group_size, bits)
        self.num_embeddings = num_embeddings
        self.dims = dims

        # Freeze this model's parameters
        self.freeze()

    def __call__(self, x):
        return mx.dequantize(
            self["weight"][x],
            scales=self["scales"][x],
            biases=self["biases"][x],
            group_size=self.group_size,
            bits=self.bits,
        )

    def as_linear(self, x):
        """
        Call the quantized embedding layer as a quantized linear layer.

        Use this for example when input embedding and output projection
        weights are tied.
        """
        return mx.quantized_matmul(
            x,
            self["weight"],
            scales=self["scales"],
            biases=self["biases"],
            transpose=True,
            group_size=self.group_size,
            bits=self.bits,
        )

    def _extra_repr(self):
        return (
            f"{self.num_embeddings}, {self.dims}, "
            f"group_size={self.group_size}, bits={self.bits}"
        )

    @classmethod
    def from_embedding(
        cls, embedding_layer: Module, group_size: int = 64, bits: int = 4
    ):
        """Create a :obj:`QuantizedEmbedding` layer from an :obj:`Embedding` layer."""
        embedding_dims, dims = embedding_layer.weight.shape
        ql = cls(embedding_dims, dims, group_size, bits)
        ql.weight, ql.scales, ql.biases = mx.quantize(
            embedding_layer.weight, group_size, bits
        )
        return ql


class QuantizedLinear(Module):
    """Applies an affine transformation to the input using a quantized weight matrix.

    It is the quantized equivalent of :class:`mlx.nn.Linear`. For now its
    parameters are frozen and will not be included in any gradient computation
    but this will probably change in the future.

    :obj:`QuantizedLinear` also provides a classmethod :meth:`from_linear` to
    convert linear layers to :obj:`QuantizedLinear` layers.

    Args:
        input_dims (int): The dimensionality of the input features.
        output_dims (int): The dimensionality of the output features.
        bias (bool, optional): If set to ``False`` then the layer will not use
            a bias. Default: ``True``.
        group_size (int, optional): The group size to use for the quantized
            weight. See :func:`~mlx.core.quantize`. Default: ``64``.
        bits (int, optional): The bit width to use for the quantized weight.
            See :func:`~mlx.core.quantize`. Default: ``4``.
    """

    def __init__(
        self,
        input_dims: int,
        output_dims: int,
        bias: bool = True,
        group_size: int = 64,
        bits: int = 4,
    ):
        super().__init__()

        # Quantization config
        self.group_size = group_size
        self.bits = bits

        # Initialize the quantized weight
        scale = math.sqrt(1 / input_dims)
        weight = mx.random.uniform(
            low=-scale,
            high=scale,
            shape=(output_dims, input_dims),
        )
        self.weight, self.scales, self.biases = mx.quantize(weight, group_size, bits)

        # And bias if needed
        if bias:
            self.bias = mx.zeros((output_dims,))

        # Freeze this model's parameters
        self.freeze()

    def unfreeze(self, *args, **kwargs):
        """Wrap unfreeze so that we unfreeze any layers we might contain but
        our parameters will remain frozen."""
        super().unfreeze(*args, **kwargs)
        self.freeze(recurse=False)

    def _extra_repr(self):
        out_dims, in_dims = self.weight.shape
        in_dims *= 32 // self.bits
        return (
            f"input_dims={in_dims}, output_dims={out_dims}, bias={'bias' in self}, "
            f"group_size={self.group_size}, bits={self.bits}"
        )

    def __call__(self, x):
        x = mx.quantized_matmul(
            x,
            self["weight"],
            scales=self["scales"],
            biases=self["biases"],
            transpose=True,
            group_size=self.group_size,
            bits=self.bits,
        )
        if "bias" in self:
            x = x + self["bias"]
        return x

    @classmethod
    def from_linear(cls, linear_layer: Module, group_size: int = 64, bits: int = 4):
        """Create a :obj:`QuantizedLinear` layer from a :obj:`Linear` layer."""
        output_dims, input_dims = linear_layer.weight.shape
        ql = cls(input_dims, output_dims, False, group_size, bits)
        ql.weight, ql.scales, ql.biases = mx.quantize(
            linear_layer.weight, group_size, bits
        )
        if "bias" in linear_layer:
            ql.bias = linear_layer.bias

        return ql

# ================================= Zijie Tian : TMAC implementation ============================================

def tmac_pack_weights(
    w: mx.array,
    scales: mx.array,
    zeros: Optional[mx.array] = None,
    bits: int = 4,
    g: int = 4,
    bm: int = 512,
    kfactor: int = 16,
    simd_n_in: int = 16,
    simd_n_out: int = 8,
) -> Tuple[mx.array, mx.array]:
    """Offline preprocess the weights before inference.

    Parameters
    ----------
    w : mx.array
        Quantized weights of shape (M, K) and type "uint8".
        Add a bias of 2^(bits-1) to the original int1/2/3/4 values to convert it to uint values.
        E.g., add a bias of 2 to int2: -2, -1, 0, 1 -> 0, 1, 2, 3
    scales: mx.array
        Quantization scales of shape (M, K // group_size) or (m_groups,) and type float32/16.
    zeros: mx.array
        Same shape and type with scales.
        If None, the actual zero points will be 2^(bits-1) * scales;
        if not None, the actual zero points will be zeros + 2^(bits-1) * scales.
        E.g., before passing the zeros from BitDistiller/GPTQ, you need to modify it as following:
        `zeros = (zeros - (2 ** (bits - 1))) * scales`
    bits: int
        Number of bits for each quantized element
    g: int
        Group size of LUT
    bm: int
        Tuned tiling size of M
    kfactor: int
        Tuned tiling size of K
    simd_width: int
        128 for ARM NEON

    Returns
    -------
    w: mx.array
        Permuted weights
    scales: mx.array
        Permuted scales
    """
    assert(w.dtype == mx.uint8)

    M, K = w.shape
    M = M * bits
    ngroups_per_elem = 8 // g

    #! (M // bits, K, bits)
    w = mx.stack([(w >> ib) & 1 for ib in range(bits)], axis=-1)
    # (M // bits, K, bits) -> (M // bits, bits, K) -> (M // bits, bits, K // g, g)
    w = w.transpose(0, 2, 1).reshape(M // bits, bits, K // g, g)
    w = sum([(w[:, :, :, ig] << ig) for ig in range(g)])    #! After this, each element will containes one group. 

    # #> Test code
    # num_elem_w = len(w.flatten())
    # w = np.arange(num_elem_w).reshape(w.shape)

    # 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23, 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31
    # for bits=3
    # bit0: [0, 8), bit1: [8, 16), bit2: [16, 24), bit0: [24, 32)
    # (M // bits // simd_n_float16, bits, simd_n_float16, K // g)
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g).transpose(0, 2, 1, 3)
    mgroup = ngroups_per_elem * simd_n_in
    #! After this, w[:, b, :, :] will contains specific bit slice.
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g).transpose(0, 2, 1, 3)

    # import pdb; pdb.set_trace()
    #             0        1             2          3                 4                  5
    w = w.reshape(M // bm, bm // mgroup, simd_n_in, ngroups_per_elem, K // g // kfactor, kfactor).transpose(0, 4, 1, 5, 2, 3)
    # w shape = (M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in, ngroups_per_elem)
    w = sum([(w[:, :, :, :, :, ng] << (ng * g)) for ng in range(ngroups_per_elem)])
    w = w.reshape(M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in)
    # input size of current TVM API
    w = w.reshape(M // bm, K // g, bm // ngroups_per_elem)

    if scales.size >= M // bits:
        group_size = K // scales.shape[1]
        scales = scales.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
        scales = scales.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
        if zeros is not None:
            zeros = zeros.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
            zeros = zeros.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
            scales = mx.stack([scales, zeros], axis=-2)
        # input size of current TVM API
        scales = scales.reshape(M // bm, K // group_size, -1)
    else:
        if zeros is not None:
            scales = mx.concatenate([scales, zeros])
    return w, scales


def tmac_weight_quant(weight, group_size, force_per_tensor=False):
    weight = mx.array(weight)
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = mx.reshape(weight, (M, K // group_size, group_size)).astype(mx.float32)
        scale = 1 / mx.clip(mx.mean(mx.abs(weight), axis=-1), a_min=1e-5, a_max=None)
        qweight = mx.round(weight * mx.expand_dims(scale, axis=-1))
        qweight = mx.minimum(mx.maximum(qweight, -1), 1)  # 替换clip方法
        qweight = qweight.astype(dtype).reshape(org_w_shape)
    else:
        weight = weight.astype(mx.float32)
        scale = 1 / mx.clip(mx.mean(mx.abs(weight)), a_min=1e-5, a_max=None)
        qweight = mx.round(weight * scale)
        qweight = mx.minimum(mx.maximum(qweight, -1), 1)  # 替换clip方法
        scale = scale * mx.ones((M, K // group_size), dtype=dtype)

    return qweight, scale

class TMACQuantizedLinear(Module):
    """Applies an affine transformation to the input using a quantized weight matrix.

    It is the quantized equivalent of :class:`mlx.nn.Linear`. For now its
    parameters are frozen and will not be included in any gradient computation
    but this will probably change in the future.

    :obj:`TMACQuantizedLinear` also provides a classmethod :meth:`from_linear` to
    convert linear layers to :obj:`QuantizedLinear` layers.

    Args:
        input_dims (int): The dimensionality of the input features.
        output_dims (int): The dimensionality of the output features.
        bias (bool, optional): If set to ``False`` then the layer will not use
            a bias. Default: ``True``.
        group_size (int, optional): The group size to use for the quantized
            weight. See :func:`~mlx.core.quantize`. Default: ``64``.
        bits (int, optional): The bit width to use for the quantized weight.
            See :func:`~mlx.core.quantize`. Default: ``4``.
    """

    def __init__(
        self,
        M: int,
        K: int,
        N: int,
        group_size: int = 128,
        act_group_size: int = 128,
        kfactor: int = 128,
        g: int = 128,
        bm: int = 128,
        nbits: int = 2,
        n_threads: int = 12,
        stream: mx.Device = mx.cpu,
        bias: bool = True,
    ):
        super().__init__()

        # Quantization config
        self.M = M
        self.K = K
        self.N = N
        self.group_size = group_size
        self.act_group_size = act_group_size
        self.kfactor = kfactor
        self.g = g
        self.bm = bm
        self.nbits = nbits
        self.n_threads = n_threads
        self.stream = stream

        # TODO : This shape is not correct. packed shape is not correct.
        rand_scale = math.sqrt(1 / K)
        weight = mx.random.uniform(
            low=-rand_scale,
            high=rand_scale,
            shape=(M, K),
        )

        pesudo_weight, pesudo_scales = tmac_weight_quant(weight, group_size, force_per_tensor=True)
        pesudo_weight = mx.round(pesudo_weight + 2 ** (nbits - 1)).astype(mx.uint8)
        pesudo_scales = pesudo_scales.astype(mx.float16)
        self.packed_weight, self.scales_t = tmac_pack_weights(
            pesudo_weight,
            pesudo_scales,
            None,
            bits=self.nbits,
            g=self.g,
            bm=self.bm,
            kfactor=self.kfactor,
            simd_n_in=16,
            simd_n_out=8,            
        )

        #! Not need `eval` because we allocate it in tmac_gemv function.
        self.mx_QLUT = mx.zeros((N, K // g, 1 << g), mx.uint8)
        self.mx_LUT_Scales = mx.zeros((N, K // act_group_size), mx.float16)
        self.mx_LUT_Biases = mx.zeros((N, K // act_group_size), mx.float16)

        # And bias if needed
        if bias:
            self.bias = mx.zeros((K,))

        # Freeze this model's parameters
        self.freeze()

    def unfreeze(self, *args, **kwargs):
        """Wrap unfreeze so that we unfreeze any layers we might contain but
        our parameters will remain frozen."""
        super().unfreeze(*args, **kwargs)
        self.freeze(recurse=False)

    def _extra_repr(self):
        out_dims, in_dims = self.weight.shape
        in_dims *= 32 // self.bits
        return (
            f"input_dims={in_dims}, output_dims={out_dims}, bias={'bias' in self}, "
            f"group_size={self.group_size}, bits={self.bits}"
        )

    def __call__(self, x):
        mx_output = mx.tmac_gemv(
            x,
            self.packed_weight,
            self.scales_t,            
            self.mx_QLUT,
            self.mx_LUT_Scales,
            self.mx_LUT_Biases,
            M=self.M,
            K=self.K,
            N=self.N,
            group_size=self.group_size,
            act_group_size=self.act_group_size,
            kfactor=self.kfactor,
            g=self.g,
            bm=self.bm,
            nbits=self.nbits,
            n_threads=self.n_threads,
            stream=mx.cpu
        )
        if "bias" in self:
            mx_output = mx_output + self["bias"]
        return mx_output

    @classmethod
    def from_linear(cls, 
        linear_layer: Module, 
        M, K, N, 
        group_size: int = 128, 
        act_group_size: int = 64,
        kfactor: int = 16,
        g: int = 4,
        bm: int = 128,
        nbits: int = 2,
        n_threads: int = 12,
        stream: mx.Device = mx.cpu,
        bias: bool = True,
    ):
        """Create a :obj:`QuantizedLinear` layer from a :obj:`Linear` layer."""
        weight = linear_layer.weight
        ql = cls(
            M, K, N, group_size, act_group_size, 
            kfactor, g, bm, nbits, n_threads, stream, bias
        )
        pesudo_weight, pesudo_scales = tmac_weight_quant(weight, ql.group_size, force_per_tensor=True)
        pesudo_weight = mx.round(pesudo_weight + 2 ** (nbits - 1)).astype(mx.uint8)
        pesudo_scales = pesudo_scales.astype(mx.float16)
        ql.packed_weight, ql.scales_t = tmac_pack_weights(
            pesudo_weight,
            pesudo_scales,
            None,
            bits=ql.nbits,
            g=ql.g,
            bm=ql.bm,
            kfactor=ql.kfactor,
            simd_n_in=16,
            simd_n_out=8, 
        )
        if "bias" in linear_layer:
            ql.bias = linear_layer.bias

        return ql



