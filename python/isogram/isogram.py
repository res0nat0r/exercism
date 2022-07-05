"""
Determine if a word or phrase is an isogram.
"""

from collections import Counter


def is_isogram(value):
    """
    :param value: str Input value
    :return: bool If value is an isogram

    Calculate if value is an isogram
    """

    value = value.replace("-", "").replace(" ", "").lower()
    counter = Counter(value)

    if any({k: v for (k, v) in counter.items() if v > 1}):
        return False

    return True