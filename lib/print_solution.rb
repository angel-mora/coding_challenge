# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
 
# Performance / buenas prácticas
# Rspec tests with dummy arrays
require 'byebug'

example_1 = [[1,5], [2,6]] #= [[1,6]
example_2 = [[1,5], [6,8]] #= [[1,5], [6,8]]
example_3 = [[1,3], [4,5], [6,7]] # = [[1,3], [4,5], [6,7]]
example_4 = [[1,5], [2,6], [8,9]] # = [[1,6], [8,9]]
example_5 = [[1,5], [2,2], [2,3], [7,10]] # = [[1,5], [7,10]]

class PrintSolution
  def self.merge_array(array_of_arrays)
    first_arr = array_of_arrays[0]
    second_arr = array_of_arrays[1]
    
    new_array = [first_arr[0], second_arr[1]]
    first_arr[1] > second_arr[0] ? new_array : array_of_arrays
    
    array_of_arrays.each do |left_array, right_array|
      first_arr = left_array[0]# > second_arr[0]
      second_arr = right_array[1]
      new_array = [first_arr[0], second_arr[1]]
      new_array if first_arr[1] > second_arr[0]
    end
  end
end

p PrintSolution.merge_array(example_1)
p PrintSolution.merge_array(example_2)
# p PrintSolution.merge_array(example_3)
# p PrintSolution.merge_array(example_4)
# p PrintSolution.merge_array(example_5)
