class Node
  include Enumerable(Int32)

  def initialize(value : Int32)
    @value = value
    @left = 0
    @right = 0
  end

  def value
    @value
  end

  def each
    yield @value
  end

  def insert(value : Int32)
    @value
  end

  def left(new_value : Int32)
    if new_value < @value
      @left = new_value
    else
      @left = nil
    end
  end
end