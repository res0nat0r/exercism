class Node
  include Enumerable(Int32)

  def initialize(value : Int32)
    @value = value
    @left = nil
    @right = nil
  end

  def value
    @value
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
    @left
  end

  def right
    @right
  end

  def search(value : Int32)
    if value == @value
      return self 
    elsif value < @value
      search(@left)
    elsif
      search(@right)
    else
      return nil 
    end
  end
end
