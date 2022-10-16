"""Resistor colors"""


def color_code(color):
    """Color codes"""

    index = 0
    lookup = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white",
    ]

    for i, _ in enumerate(lookup):
        if lookup[i] == color:
            index = i

    return index


def colors():
    """List of colors"""

    return [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white",
    ]
