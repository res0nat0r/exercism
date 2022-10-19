(*
Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

Hence the difference between the square of the sum of the first ten natural
numbers and the sum of the squares of the first ten natural numbers is 3025 -
385 = 2640.
*)

open Base

let sum l = List.fold ~init:0 ~f:( + ) l
let rec range a b = if a > b then [] else a :: range (a + 1) b

let square_of_sum n =
  let total = range 1 n |> sum in
  total * total

let sum_of_squares n = range 1 n |> List.map ~f:(fun x -> x * x) |> sum
let difference_of_squares n = square_of_sum n - sum_of_squares n
