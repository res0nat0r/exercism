"""
(d₁ * 10 + d₂ * 9 + d₃ * 8 + d₄ * 7 + d₅ * 6 + d₆ * 5 + d₇ * 4 + d₈ * 3 + d₉ * 2
+ d₁₀ * 1) mod 11 == 0
"""

import re


def is_valid(isbn):
    """Verify ISBN"""

    if isbn == "":
        return False

    isbn = re.sub("-", "", isbn)
    isbn = list(isbn)

    if isbn[-1] == "X":
        isbn[-1] = "10"

    if len(isbn) != 10:
        return False

    isbn = list(filter(lambda x: x.isnumeric(), isbn))

    if len(isbn) != 10:
        return False

    if sum([int(x) * y for x, y in zip(isbn, range(10, 0, -1))]) % 11 == 0:
        return True

    return False
