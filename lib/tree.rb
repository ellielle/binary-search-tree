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
    #TODO use array to make queue of child nodes not yet visited. QUEUE -> FIFO
    #     F       start at F -> [D, J] -> [B,E,G,K]
    #   D ^ J
    # B^E  G^K
  end
  def depth_first_search(value)
    #TODO use array as a stack. STACK -> LIFO
    # start at F -> [D, J] -> [B,E,D,J]
  end
  def dfs_rec(value); end #recursive depth first
end