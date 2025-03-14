import mlx.core as mx
import mlx.nn as nn

import time

def timeit(fun, x, name=""):
    # warm up
    for _ in range(10):
        mx.eval(fun(x))

    tic = time.perf_counter()
    for _ in range(100):
        mx.eval(fun(x))
    toc = time.perf_counter()
    tpi = 1e3 * (toc - tic) / 100
    print(f"{name} Time per iteration {tpi:.3f} (ms)")
    
    
x = mx.random.uniform(shape=(32, 1000, 4096))
timeit(nn.gelu, x, "No Compile")
timeit(mx.compile(nn.gelu), x, "Compiled")
