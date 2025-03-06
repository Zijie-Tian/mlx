# Copyright © 2023 Apple Inc.

import itertools
import math
import unittest

import mlx.core as mx
import mlx_tests
import numpy as np

import mlx.nn as nn

class TestLinear(mlx_tests.MLXTestCase):
    def test_linear(self):
        linear  = nn.Linear(4096, 4096, bias=False)
        # Generate a matrix of all ones as the weight of the linear layer
        linear.weight = mx.ones((4096, 4096))
        x = mx.random.normal((4096,))
        y = linear(x)

        hermeslinear = nn.HermesLinear(4096, 4096, bias=False)
        hermeslinear.weight = mx.ones((4096, 4096))
        y_hermes = hermeslinear(x)
        self.assertEqualArray(y, y_hermes)

    def test_linear_with_bias(self):
        linear  = nn.Linear(4096, 4096, bias=True)
        # Generate a matrix of all ones as the weight of the linear layer
        linear.weight = mx.ones((4096, 4096))
        linear.bias = mx.ones((4096,))
        x = mx.random.normal((4096,))
        y = linear(x)
        hermeslinear = nn.HermesLinear(4096, 4096, bias=True)
        hermeslinear.weight = mx.ones((4096, 4096))
        hermeslinear.bias = mx.ones((4096,))
        y_hermes = hermeslinear(x)
        self.assertEqualArray(y, y_hermes)

if __name__ == "__main__":
    unittest.main()