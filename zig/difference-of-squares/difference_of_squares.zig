pub fn squareOfSum(number: usize) usize {

}

pub fn sumOfSquares(number: usize) usize {
    _ = number;
    @compileError("compute the sum of i^2 from 0 to n");
}

pub fn differenceOfSquares(number: usize) usize {
    _ = number;
    @compileError("compute the difference between the square of sum and sum of squares");
}


// function square_of_sum(n)
//     return sum(1:n) * sum(1:n)
// end

// "Sum the squares of the first `n` positive integers"
// function sum_of_squares(n)
//     return sum(map(x -> x * x, 1:n))
// end

// "Subtract the sum of squares from square of the sum of the first `n` positive ints"
// function difference(n)
//     return square_of_sum(n) - sum_of_squares(n)
// end