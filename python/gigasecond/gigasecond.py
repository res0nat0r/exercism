"""
Given a moment, determine the moment that would be after a gigasecond has passed.
"""

from datetime import timedelta


def add(moment):
    """
    :param moment: datetime Time to offset
    :return: datetime moment plus gigasecond
    """
    return moment + timedelta(seconds=1_000_000_000)
