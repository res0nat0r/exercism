"""Resistor colors"""


def color_code(color):
    """Color codes"""

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

    for i in range(0, len(lookup)):
        if lookup[i] == color:
            return i


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
