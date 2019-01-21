class Node
  attr_accessor :left_child, :right_child
  attr_reader :value

  def initialize(value = nil)
    @value = value
    @left_child = nil
    @right_child = nil
  end
end
