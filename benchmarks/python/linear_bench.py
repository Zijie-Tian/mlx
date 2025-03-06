# Copyright © 2023 Apple Inc.

import itertools
import math
import unittest

import mlx.core as mx
import numpy as np

import mlx.nn as nn

from time_utils import time_fn

def time_linear():
    linear  = nn.Linear(4096, 4096, bias=False)
    # Generate a matrix of all ones as the weight of the linear layer
    linear.weight = mx.ones((4096, 4096))
    x = mx.random.normal((4096,))
    y = linear(x)

    hermeslinear = nn.HermesLinear(4096, 4096, bias=False)
    hermeslinear.weight = mx.ones((4096, 4096))
    y_hermes = hermeslinear(x)

    def linear_fn(linear, x):
        return linear(x)

    for _ in range(10):
        linear(x)
        hermeslinear(x)

    print("Linear")
    time_fn(linear_fn, linear, x)
    print("HermesLinear")
    time_fn(linear_fn, hermeslinear, x)

if __name__ == "__main__":
    time_linear()





