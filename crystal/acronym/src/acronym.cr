module Acronym
  extend self

  def abbreviate(s)
    return s.split(/[ _]/).map { |w| w.split(//).first }.join
  end
end
