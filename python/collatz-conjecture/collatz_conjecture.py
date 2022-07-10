"""
The Collatz Conjecture or 3x+1 problem can be summarized as follows:

Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is
odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely.
The conjecture states that no matter which number you start with, you will
always reach 1 eventually.

Given a number n, return the number of steps required to reach 1.
"""


def steps(number):
    """Calculate number of steps in Collatz sequence

    :param int number: Number to calculate
    """

    counter = 0

    if number < 1:
        raise ValueError("Only positive integers are allowed")

    while number != 1:
        if is_even(number):
            number = number / 2
            counter += 1
        else:
            number = (number * 3) + 1
            counter += 1

    return counter


def is_even(number):
    """Is the number even?"

    :param int number: Number to calculate
    """

    if number % 2 == 0:
        return True

    return False
