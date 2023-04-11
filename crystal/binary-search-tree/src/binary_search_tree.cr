class Node(Int32)
  include Enumerable(Int32)

  property value : Int32, left : Node(Int32)? = nil, right : Node(Int32)? = nil

  def initialize(@value : Int32)
  end

  def value
    return @value
  end

  def each(&block : Int32 ->)
  end
    
  def insert(value : Int32)
    if value <= @value
      left = @left
      left.nil? ? Node.new(value) : left.insert(value)
    else
      right = @right
      right.nil? ? Node.new(value) : right.insert(value)
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
