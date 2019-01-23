require_relative 'tree'

random_arr = Array.new(20) { rand(1...100) }
random_arr.push(27) #pushing a non random number to make sure the method works properly
control_arr = [1, 3, 4, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 645]
control_bst = BinarySearchTree.new(control_arr)
random_bst = BinarySearchTree.new(random_arr)
#breadth-first searching
control = control_bst.breadth_first_search(9)
search_random = random_bst.breadth_first_search(48)
search_not_so_random = random_bst.breadth_first_search(27)
print control.nil? ? "Value not found. " : "#{control} found in tree. "
print search_random.nil? ? "Value not found. " : "#{search_random} found in tree. "
print search_not_so_random.nil? ? "Value not found. " : "#{search_not_so_random} found in tree. "
puts
#depth-first searching
control = control_bst.depth_first_search(67)
search_random = random_bst.depth_first_search(48)
search_not_so_random = random_bst.depth_first_search(27)
print control.nil? ? "Value not found. " : "#{control} found in tree. "
print search_random.nil? ? "Value not found. " : "#{search_random} found in tree. "
print search_not_so_random.nil? ? "Value not found. " : "#{search_not_so_random} found in tree. "
puts
#depth-first recursive
control = control_bst.dfs_rec(7)
search_random = random_bst.dfs_rec(48)
search_not_so_random = random_bst.dfs_rec(27)
print control.nil? ? "Value not found. " : "#{control} found in tree. "
print search_random.nil? ? "Value not found. " : "#{search_random} found in tree. "
print search_not_so_random.nil? ? "Value not found. " : "#{search_not_so_random} found in tree. "
