def square(number):
    if number not in range(1, 65):
        raise ValueError("square must be between 1 and 64")

    return pow(2, number)


def total():
    pass
