module AtbashCipher
  ENCODE = {
    "a" => "z",
    "b" => "y",
    "c" => "x",
    "d" => "w",
    "e" => "v",
    "f" => "u",
    "g" => "t",
    "h" => "s",
    "i" => "r",
    "j" => "q",
    "k" => "p",
    "l" => "o",
    "m" => "n",
    "n" => "m",
    "o" => "l",
    "p" => "k",
    "q" => "j",
    "r" => "i",
    "s" => "h",
    "t" => "g",
    "u" => "f",
    "v" => "e",
    "w" => "d",
    "x" => "c",
    "y" => "b",
    "z" => "a",
  }

  DECODE = {
    "z" => "a",
    "y" => "b",
    "x" => "c",
    "w" => "d",
    "v" => "e",
    "u" => "f",
    "t" => "g",
    "s" => "h",
    "r" => "i",
    "q" => "j",
    "p" => "k",
    "o" => "l",
    "n" => "m",
    "m" => "n",
    "l" => "o",
    "k" => "p",
    "j" => "q",
    "i" => "r",
    "h" => "s",
    "g" => "t",
    "f" => "u",
    "e" => "v",
    "d" => "w",
    "c" => "x",
    "b" => "y",
    "a" => "z",
  }

  def self.encode(message : String) : String
    encoded = [] of String
    message = message.chars.select { |c| c.ascii_alphanumeric? }.join

    message.split(//).each do |m|
      if m.char.number?
        decoded.push(m)
      else
        encoded.push(ENCODE[m.downcase])
      end
    end

    return encoded.join
  end

  def self.decode(message : String) : String
    decoded = [] of String
    message = message.chars.select { |c| c.ascii_alphanumeric? }.join

    message.split(//).each do |m|
      if m.char.number?
        decoded.push(m)
      else
        decoded.push(DECODE[m.downcase])
      end
    end

    return decoded.join
  end
end
