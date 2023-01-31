class Node
  include Enumerable(Int32)

  def initialize(value : Int32)
    @value = value
  end

  def value
    @value
  end

  def each
    yield @value
  end
end
