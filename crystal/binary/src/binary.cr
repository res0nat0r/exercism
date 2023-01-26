module Binary
  def self.to_decimal(number : String) : Int
    sum = 0

    number.chars.each_with_index do |n, i|
      sum += n.to_i * (2 ** (number.size - i - 1))
    end

    return sum
  end
end