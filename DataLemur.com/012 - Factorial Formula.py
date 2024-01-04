# Source: https://archive.is/Ho51y

def factorial(n):
    if n in [0, 1]:
        return 1
    return n * factorial(n - 1)
