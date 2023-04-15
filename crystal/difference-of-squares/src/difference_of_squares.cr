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
