def square_of_sum(number):
    total  = sum(range(1, number + 1))
    return total * total


def sum_of_squares(number):
    return sum([x * x for x in range(1, number + 1)])


def difference_of_squares(number):
    return square_of_sum(number) - sum_of_squares(number)
