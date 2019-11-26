class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = nil
    @right = nil
  end
end

class BTreeSort

  def self.sort(array)
    @start = BinaryTree.new(array.first, nil, nil)
    array.shift 
    @sortarry = []
    array.each do |x|
      @look = @start 
      insert(x)
    end
    sortme(@start)
    return @sortarry
  end

  def self.insert(value)
    node = value <=> @look.payload
      if node == -1
        # left
        if @look.left == nil then
          @look.left = BinaryTree.new(value, nil, nil)
        else
          @look = @look.left
          self.insert(value)
        end
      else
        # right
        if @look.right == nil then
          @look.right = BinaryTree.new(value, nil, nil)
        else
          @look = @look.right
          self.insert(value)
        end
      end
  end

  def self.sortme(starter)
    if starter == nil
      return
    end

    if starter.left
      sortme(starter.left)
    end

    @sortarry << starter.payload

    if starter.right
      sortme(starter.right)
    end

  end
end

