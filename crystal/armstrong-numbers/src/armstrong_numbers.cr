module ArmstrongNumbers
  def self.armstrong_number?(input : Number) : Bool
    sum = 0

    split_number(input).each_with_index do |n, i|
      sum += n.to_i ** (i + 1)
    end

    if sum == input
      return true
    else
      return false
    end
  end

  def self.split_number(input : Number) : Array(String)
    return input.to_s.split(//)
  end
end

# For example:

# 9 is an Armstrong number, because 9 = 9^1 = 9
# 10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1
# 153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# 154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190
# Write some code to determine whether a number is an Armstrong number.