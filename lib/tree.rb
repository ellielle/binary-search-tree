class BinarySearchTree
  class Node
    attr_accessor :left, :right
    attr_reader :value

    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end
  end

  def initialize(arr)
    @root = nil
    @size = 0
    build_tree(arr)
  end

  def build_tree(arr)
    return puts "\nInvalid data." if arr.nil? || !arr.is_a?(Array)
    arr.each do |element|
      add_node(element)
      @size += 1
    end
  end

  def add_node(value)
    if @root.nil?
      @root = Node.new(value)
    else
      temp_root = @root

      until temp_root.nil?
        parent = temp_root
        if value < temp_root.value
          temp_root = temp_root.left
        else
          temp_root = temp_root.right
        end
      end

      if value < parent.value
        parent.left = Node.new(value)
      else
        parent.right = Node.new(value)
      end
    end
  end
end