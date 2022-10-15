def classify(number):
    """A perfect number equals the sum of its positive divisors.

    :param number: int a positive integer
    :return: str the classification of the input integer
    """

    if number < 1:
        raise ValueError("Classification is only possible for positive integers.")
    if abundant(number):
        return "abundant"
    elif deficient(number):
        return "deficient"
    elif perfect(number):
        return "perfect"


def factor(n, d):
    return 0 == n % d


def factors(n):
    return list(filter(lambda d: n % d == 0, range(1, n)))


def sum_factors(n):
    return sum(factors(n))


def abundant(n):
    return sum_factors(n) > n


def deficient(n):
    return sum_factors(n) < n


def perfect(n):
    return sum(factors(n)) == n
