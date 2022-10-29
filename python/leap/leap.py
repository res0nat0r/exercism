"""
dETermine the if the year is a leap year
"""


def leap_year(year):
    """
    :param year: int Year to test
    :return: bool
    """

    if ((year % 4 == 0) and (year % 100 != 0)) or (year % 400 == 0):
        return True

    return False
