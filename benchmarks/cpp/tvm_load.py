import tvm
import numpy as np
from tvm.runtime import load_module
# Load the module using the updated API
fadd1 = load_module("myadd.so")
ctx = tvm.cpu(0)
n = 10

a = tvm.nd.array(np.random.uniform(size=n).astype(np.float32), ctx)
b = tvm.nd.array(np.random.uniform(size=n).astype(np.float32), ctx)
c = tvm.nd.array(np.zeros(n, dtype=np.float32), ctx)

print(type(fadd1))
fadd1(a, b, c)
print(c.asnumpy())