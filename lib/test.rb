require_relative 'tree'

unsorted_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
sorted_arr = [1, 3, 4, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 6345]

sorted_bst = BinarySearchTree.new(sorted_arr)
unsorted_bst = BinarySearchTree.new(unsorted_arr)

p "hi"
