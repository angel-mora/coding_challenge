# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
 
# Performance / buenas prácticas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'
example_1 = [[1,5], [2,6]] #= [[1,6]]
example_2 = [[1,5], [6,8]] #= [[1,5], [6,8]]
example_3 = [[1,3], [4,5], [6,7]] # = [[1,3], [4,5], [6,7]]
example_4 = [[1,5], [2,6], [8,9]] # = [[1,6], [8,9]]
example_5 = [[1,5], [2,2], [2,3], [7,10]] # = [[1,5], [7,10]]

class PrintSolution

  #solution by repositioning
  def self.merge_array(array_of_arrays)
    result = []
    array_of_arrays.each_with_index do |arr, index|
      if index < array_of_arrays.length - 1
        new_array = arr + array_of_arrays[index + 1] # unless index + 1 > array_of_arrays.length
        new_array = new_array.minmax
      # new_array = [first_arr[0], second_arr[1]]
      # new_array if first_arr[1] > second_arr[0]
      end
    result << new_array unless new_array.nil?
    end
    result
  end

  # solution by sum and set minmax
end

p PrintSolution.merge_array(example_1)
p PrintSolution.merge_array(example_2)
# p PrintSolution.merge_array(example_3)
# p PrintSolution.merge_array(example_4)
# p PrintSolution.merge_array(example_5)
