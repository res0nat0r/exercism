def square_of_sum(number):
    s = sum(range(1,number+1))
    return s * s


def sum_of_squares(number):
    return sum([x * x for x in range(1,number+1)])


def difference_of_squares(number):
    return square_of_sum(number) - sum_of_squares(number)
