import tvm
from tvm import te  # 新增te模块导入

n = te.var("n")  # 原tvm.var改为te.var
A = te.placeholder((n,), name='A')  # 使用te.placeholder
B = te.placeholder((n,), name='B')
C = te.compute(A.shape, lambda i: A[i] + B[i], name="C")  # 使用te.compute
s = te.create_schedule(C.op)  # 使用te.create_schedule
fadd = tvm.build(s, [A, B, C], "llvm", target_host="llvm", name="myadd")

from tvm.contrib.cc import create_shared  # 替换旧的cc_compiler导入
from tvm.contrib.utils import tempdir    # 替换util导入

fadd.save("myadd.o")

# 创建共享库
create_shared("myadd.so", ["myadd.o"])  # 直接调用create_shared