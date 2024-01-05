# Source: https://archive.is/hPPA1

import numpy as np


def intersection(a, b):
    a = np.array(a)
    b = np.array(b)
    return a[np.in1d(a, b)].tolist()
