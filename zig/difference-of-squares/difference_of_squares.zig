pub fn squareOfSum(number: usize) usize {
    var sum: usize = 0;

    for (1..number + 1) |i| {
        sum += i;
    }

    return sum * sum;
}

pub fn sumOfSquares(number: usize) usize {
    var sum: usize = 0;
    var tmp: usize = 0;

    for (1..number + 1) |i| {
        tmp = i * i;
        sum += tmp;
    }

    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
