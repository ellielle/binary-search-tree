require_relative 'node'

class BinarySearchTree
  def initialize(arr)
    @root = nil
    @size = 0
    @depth = 0
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
      @depth.times do
        next if temp_root.left_child.nil?
        next if temp_root.right_child.nil?
        if temp_root.left_child.right_child == nil
          temp_root = temp_root.left_child
          next
        elsif temp_root.right_child.right_child == nil
          temp_root = temp_root.right_child
        end
      end
      loop do
        if temp_root.left_child.nil?
          temp_root.left_child = Node.new(value)
          break
        elsif temp_root.right_child.nil?
          temp_root.right_child = Node.new(value)
          break
        else
          @depth += 1
          break
        end
      end
    end
    @size += 1
  end
end

test_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324].sort
bst = BinarySearchTree.new(test_arr)