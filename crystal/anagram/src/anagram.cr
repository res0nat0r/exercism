module Anagram
  def self.find(subject : String, candidates : Array(String)) : Array(String)
    s = [] of Char
    matches = [] of String

    s = subject.split(//).map {|c| c.downcase}.sort.join

    candidates.each do |candidate|
      c = candidate.split(//).map {|c| c.downcase}.sort.join

      if s == c 
        matches.push(candidate)
      end
    end

    return matches
end
