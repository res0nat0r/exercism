"""
Determine if a number is perfect, abundant, or deficient based on Nicomachus'
(60 - 120 CE) classification scheme for positive integers.
"""


def classify(number):
    """A perfect number equals the sum of its positive divisors.

    :param number: int a positive integer
    :return: str the classification of the input integer
    """

    if number < 1:
        raise ValueError("Classification is only possible for positive integers.")
    if abundant(number):
        return "abundant"
    if deficient(number):
        return "deficient"
    # elif perfect(number):
    return "perfect"


def memoize(func):
    """Speed up factoring"""

    memo = {}

    def helper(tmp):
        if tmp not in memo:
            memo[tmp] = func(tmp)
        return memo[tmp]

    return helper


def factor(numerator, denominator):
    """Factor a number"""

    return numerator % denominator == 0


@memoize
def factors(numerator):
    """Find factors of a number"""

    return list(
        filter(lambda denominator: numerator % denominator == 0, range(1, numerator))
    )


def sum_factors(num):
    """Sum factors"""

    return sum(factors(num))


def abundant(num):
    """Is number abundant?"""

    return sum_factors(num) > num


def deficient(num):
    """Is number deficient?"""

    return sum_factors(num) < num


def perfect(num):
    """Is number perfect?"""

    return sum(factors(num)) == num
