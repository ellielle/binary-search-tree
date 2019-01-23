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
    arr.each { |element| add_node(element) }
  end

  def add_node(value)
    if @root.nil?
      @root = Node.new(value)
    else
      temp_root = @root
      until temp_root.nil?
        parent = temp_root
        value < temp_root.value ? temp_root = temp_root.left : temp_root = temp_root.right
      end
      value < parent.value ? parent.left = Node.new(value) : parent.right = Node.new(value)
    end
    @size += 1
  end

  def breadth_first_search(value)
    return if @root.nil? || @root.value == value
    queue = [@root]
    current_level = @root
    until queue.empty?
      return value if current_level.value == value
      queue.shift
      queue.push(current_level.left) unless current_level.left.nil?
      queue.push(current_level.right) unless current_level.right.nil?
      current_level = queue[0]
    end
    nil
  end

  def depth_first_search(value)
    return if @root.nil? || @root.value == value
    stack = [@root]
    current_level = @root
    until stack.empty?
      return value if current_level.value == value
      stack.shift
      stack.unshift(current_level.right) unless current_level.right.nil?
      stack.unshift(current_level.left) unless current_level.left.nil?
      current_level = stack[0]
    end
    nil
  end

  def dfs_rec(value, current_node = @root)
    return nil if current_node.nil?
    return current_node.value if current_node.value == value
    result = dfs_rec(value, current_node.left) unless current_node.left.nil?
    return result unless result.nil?
    dfs_rec(value, current_node.right) unless current_node.right.nil?
  end
end