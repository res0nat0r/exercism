"""
An Armstrong number is a number that is the sum of its
own digits each raised to the power of the number of digits.
"""


def is_armstrong_number(number):
    total = 0
    digits = len(list(str(number)))

    for i in range(digits):
        total += pow(int(str(number)[i]), digits)

    if total == number:
        return True

    return False
