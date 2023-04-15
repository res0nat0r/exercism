# Find the difference between the square of the sum and the sum of the squares of
# the first N natural numbers.

# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² =
# 55² = 3025.

# The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² =
# 385.

# Hence the difference between the square of the sum of the first ten natural
# numbers and the sum of the squares of the first ten natural numbers is 3025 -
# 385 = 2640.

# You are not expected to discover an efficient solution to this yourself from
# first principles; research is allowed, indeed, encouraged. Finding the best
# algorithm for the problem is a key skill in software engineering.

# (defn sum-of-squares [n]
#   (apply + (map #(* % %) (range 1 (+ n 1)))))

# (defn square-of-sum [n]
#   (*
#     (apply + (map #(+ %) (range 1 (+ n 1))))
#     (apply + (map #(+ %) (range 1 (+ n 1))))))

# (println (- (square-of-sum 100) (sum-of-squares 100)))

module Squares(T)
  def self.sum_of_squares(n : T)
    sum = 0

    (1..n).each do |i|
      sum += i * i
    end

    return sum
  end

  def self.square_of_sum(n : T)
    s = (1..n).to_a.sum

    return s * s
  end

  def self.difference_of_squares(n : T)
    return square_of_sum(n) - sum_of_squares(n)
  end
end
