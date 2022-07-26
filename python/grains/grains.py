"""
Calculate the number of grains of wheat on a chessboard given that the number on
each square doubles.
"""


def square(number):
    """

    :param int: number to square
    :return: int
    """

    if number not in range(1, 65):
        raise ValueError("square must be between 1 and 64")

    return pow(2, number - 1)


def total():
    """

    :return: int
    """

    return sum(square(i) for i in list(range(1, 65)))
