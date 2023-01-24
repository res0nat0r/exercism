module Anagram
  def self.find(subject : String, candidates : Array(String)) : Array(String)
    s = [] of Char
    matches = [] of String

    subject.each_char do |c|
      s.push(c.downcase)
    end

    s.sort.join

    candidates.each do |c|
      if s == c.downcase
        matches.push(c)
      end
    end

    return matches
  end
end
