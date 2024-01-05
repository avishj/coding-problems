# Source: https://archive.is/cHQGF

def max_profit(prices):
    return max((cur_price - min(prices[:i])) for i, cur_price in enumerate(prices[1:], start=1))


def max_profit(prices):
    min_price = prices[0]
    return max((curr_price - (min_price := min(min_price, curr_price))) for curr_price in prices[1:])
