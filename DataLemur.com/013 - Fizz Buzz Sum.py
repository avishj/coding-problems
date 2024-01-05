# Source: https://archive.is/9l3HQ

import numpy as np


def fizz_buzz_sum(target):
    return int(np.sum(v for v in np.arange(1, target, 1) if v % 3 == 0 or v % 5 == 0))
