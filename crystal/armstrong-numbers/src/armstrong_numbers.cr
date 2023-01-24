module ArmstrongNumbers
  def self.armstrong_number?(input : Number) : Bool
    sum = 0
    length = input.to_s.split(//).size

    split_number(input).each do |n|
      sum += n.to_i ** length
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
