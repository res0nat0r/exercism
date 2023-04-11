class Node
  include Enumerable(Int32)

  def initialize(value : Int32)
    @value = value
    @left = nil
    @right = nil
  end

  def value
    return @value
  end

  def each
    yield @value
  end

  def insert(value : Int32)
    if value <= @value
      @left = Node.new(value)
    else
      @right = Node.new(value)
    end
  end

  def left
    return @left
  end

  def right
    return @right
  end

  def search(value : Int32)
    if value <= @value
      search(@left.value)
    elsif value > @value
      search(@right.value)
    else
      return nil
    end
  end
end