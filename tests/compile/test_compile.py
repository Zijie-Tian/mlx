import time
import numpy as np
import mlx.core as mx
from mlx.nn.layers import Linear
from functools import partial

# generation_stream = mx.new_stream(mx.default_device())
mx.set_default_device(mx.cpu)

M, K, N = 3200, 3200, 1
class MyMLP:
    def __init__(self):
        weight = mx.ones((M, M)) / 3200
        
        self.linear1 = Linear(M, M, bias=False)
        self.linear1.weight = weight
        self.linear2 = Linear(M, M, bias=False)
        self.linear2.weight = weight
        self.linear3 = Linear(M, M, bias=False)
        self.linear3.weight = weight
        self.linear4 = Linear(M, M, bias=False)
        self.linear4.weight = weight

    def __call__(self, x):
        x = self.linear1(x)
        x = self.linear2(x)
        x = self.linear3(x)
        return self.linear4(x)

# Create uncompiled MLP
mlp = MyMLP()

activation = mx.ones((N, K), mx.float16)
activation_compile = mx.ones((N, K), mx.float16) / 0.5

print("Activation:", activation)

# Measure uncompiled time
start_time = time.time()
for _ in range(1000):
    mx.eval(mlp(activation))
end_time = time.time()
print("Uncompiled time:", end_time - start_time)

# Create compiled MLP
compiled_mlp = partial(mx.compile)(MyMLP())

# Measure compiled time
start_time = time.time()
for _ in range(1000):
    _ = compiled_mlp(activation_compile)
end_time = time.time()
print("Compiled time:", end_time - start_time)

non_compiled_out = mlp(activation)
compiled_out = compiled_mlp(activation_compile)

print(non_compiled_out)
print(compiled_out)

# assert np.allclose(non_compiled_out, compiled_out)
