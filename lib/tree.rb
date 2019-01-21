class BinarySearchTree
  class Node
    attr_accessor :left, :right
    attr_reader :value

    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end

    def add_node(value)
      if value <= @value
        @left.nil? ? @left = Node.new(value) : @left.add_node(value)
      elsif value > @value
        @right.nil? ? @right = Node.new(value) : @right.add_node(value)
      end
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
      check_root(element)
      @size += 1
    end
  end

  def check_root(value)
    if @root.nil?
      @root = Node.new(value)
    else
      @root.add_node(value)
    end
  end
end