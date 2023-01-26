module Binary
  def self.to_decimal(number : String) : Int
    sum = 0

    number.chars.each_with_index do |n, i|
      if [0, 1].includes? n.to_i
        sum += n.to_i * (2 ** (number.size - i - 1))
      else
        raise ArgumentError.new("Invalid Digit")
      end
    end

    return sum
  end
end
