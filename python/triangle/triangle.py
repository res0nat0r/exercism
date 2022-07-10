"""Determine if a triangle is equilateral, isosceles, or scalene."""


def equilateral(sides):
    """Is triangle equilateral

    :param array sides: Sides of triangle
    """

    (s_a, s_b, s_c) = sides

    if is_triangle(sides) and (s_a == s_b == s_c):
        return True

    return False


def isosceles(sides):
    """Is triangle isoceles

    :param array sides: Sides of triangle
    """

    (s_a, s_b, s_c) = sides

    if is_triangle(sides) and ((s_a == s_b) or (s_b == s_c) or (s_a == s_c)):
        return True

    return False


def scalene(sides):
    """Is triangle scalene

    :param array sides: Sides of triangle
    """

    (s_a, s_b, s_c) = sides

    if is_triangle(sides) and (s_a != s_b != s_c):
        return True

    return False


def is_triangle(sides):
    """Is this a triangle

    :param array sides: Sides of triangle
    """

    (s_a, s_b, s_c) = sides

    if (
        (s_a + s_b >= s_c)
        and (s_b + s_c >= s_a)
        and (s_a + s_c >= s_b)
        and ((s_a > 0) and (s_b > 0) and (s_c > 0))
    ):
        return True

    return False
