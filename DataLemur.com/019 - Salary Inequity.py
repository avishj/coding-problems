# Source: https://archive.is/tOUUd

from itertools import combinations


def min_inequity(salaries, n):
    return min(max(c) - min(c) for c in combinations(salaries, n))


def min_inequity(salaries, n):
    salaries.sort()
    return min(salaries[i + n - 1] - salaries[i] for i in range(len(salaries) - n + 1))
