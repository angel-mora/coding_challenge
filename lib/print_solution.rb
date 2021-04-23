# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
 
# Performance / buenas prácticas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'

class PrintSolution
  def self.merge_array(array_of_arrays)
    result = []
    array_of_arrays.each_with_index do |arr, index|
      if index < array_of_arrays.length - 1
        next_array = array_of_arrays[index + 1]
        if arr[1] > next_array[0]
          new_array = arr + next_array
          new_array = new_array.minmax unless new_array.nil?
          result << new_array unless new_array.nil?
        elsif arr[1] < next_array[0]
          # new_array = arr, next_array
          # result << new_array unless new_array.nil?
          result << arr unless arr.nil?
          result << next_array
        end
      end
    end
    result
  end
end
