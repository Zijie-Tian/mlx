import mlx.core as mx
from functools import partial

state = []

# Tell compile to capture state as an output
@partial(mx.compile, outputs=state)
def fun(x, y):
    z = x + y
    state.append(z)
    return mx.exp(z), state

fun(mx.array(1.0), mx.array(2.0))
# Prints [array(3, dtype=float32)]
print(state)