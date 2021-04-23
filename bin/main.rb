require_relative './../lib/print_solution'

case_1 = [[1,5], [2,6]] #= [[1,6]]
case_2 = [[1,5], [6,8]] #= [[1,5], [6,8]]
case_3 = [[1,3], [4,5], [6,7]] # = [[1,3], [4,5], [6,7]]
case_4 = [[1,5], [2,6], [8,9]] # = [[1,6], [8,9]]
case_5 = [[1,5], [2,2], [2,3], [7,10]] # = [[1,5], [7,10]]

p PrintSolution.merge_array(case_1)
p PrintSolution.merge_array(case_2)
p PrintSolution.merge_array(case_3)
p PrintSolution.merge_array(case_4)
p PrintSolution.merge_array(case_5)
