# Source: https://archive.is/4fsYU

def missing_int(input: list[int]) -> int:
    l = len(input)
    return int(((l + 1) * l) / 2) - sum(input)
