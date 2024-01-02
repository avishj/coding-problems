# Source: https://archive.is/Ho51y

def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)
