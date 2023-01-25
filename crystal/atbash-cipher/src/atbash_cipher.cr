module AtbashCipher
  CIPHER = Hash.zip(('a'..'z').to_a, ('a'..'z').to_a.reverse)

  def self.encode(message : String) : String
    encoded = [] of Char
    message = message.chars.select { |c| c.ascii_alphanumeric? }

    message.each do |m|
      if m.number?
        encoded.push(m)
      else
        encoded.push(CIPHER[m.downcase])
      end
    end

    return encoded.join.chars.map { |c| c }.in_groups_of(5).map(&.join).join(" ")
  end

  def self.decode(message : String) : String
    decoded = [] of Char
    message = message.chars.select { |c| c.ascii_alphanumeric? }

    message.each do |m|
      if m.number?
        decoded.push(m)
      else
        decoded.push(CIPHER.invert[m.downcase])
      end
    end

    return decoded.join.chars.map { |c| c }.join
  end
end
