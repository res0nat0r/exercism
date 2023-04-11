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
      left = @left
      if left.nil?
        @left = Node.new(value)
      else
        left.insert(value)
      end
    else
      right = @right
      if right.nil?
        @right = Node.new(value)
      else
        right.insert(value)
      end
    end
  end

  def left
    return @left
  end

  def right
    return @right
  end

  def search(value : Int32)
    if @value == value
      return self
    end

    if value <= @value
      @left.try &.search(value)
    else
      @right.try &.search(value)
    end
  end

  def delete(value : Int32)
  end
end
