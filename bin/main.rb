require_relative './../lib/print_solution'

case1 = [[1, 5], [2, 6]] # [[1,6]]
case2 = [[1, 5], [6, 8]] # [[1,5], [6,8]]
case3 = [[1, 3], [4, 5], [6, 7]] # [[1,3], [4,5], [6,7]]
case4 = [[1, 5], [2, 6], [8, 9]] # [[1,6], [8,9]]
case5 = [[1, 5], [2, 2], [2, 3], [7, 10]] # [[1,5], [7,10]]

p PrintSolution.merge_array(case1)
p PrintSolution.merge_array(case2)
p PrintSolution.merge_array(case3)
p PrintSolution.merge_array(case4)
p PrintSolution.merge_array(case5)
