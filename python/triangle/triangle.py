def equilateral(sides):
    (a, b, c) = sides

    if is_triangle(sides) and (a == b == c):
        return True

    return False


def isosceles(sides):
    (a, b, c) = sides

    if is_triangle(sides) and ((a == b) or (b == c) or (a == c)):
        return True

    return False


def scalene(sides):
    (a,b,c)=sides

    if is_triangle(sides) and (a != b != c):
        return True

    return False


def is_triangle(sides):
    (a, b, c) = sides

    if (
        (a + b >= c)
        and (b + c >= a)
        and (a + c >= b)
        and ((a > 0) and (b > 0) and (c > 0))
    ):
        return True

    return False
