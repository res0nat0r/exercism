"""
Find the difference between the square of the sum and the
sum of the squares of the first N natural numbers.
"""


def square_of_sum(number):
    """
    :param number: int number to calculate
    :return: int calculated value
    """

    total = sum(range(1, number + 1))
    return total * total


def sum_of_squares(number):
    """
    :param number: int number to calculate
    :return: int calculated value
    """
    return sum(x * x for x in range(1, number + 1))


def difference_of_squares(number):
    """
    :param number: int number to calculate
    :return: int calculated value
    """

    return square_of_sum(number) - sum_of_squares(number)
