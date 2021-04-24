# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
 
# Performance / buenas prácticas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'

class PrintSolution
  def self.merge_array(arrays)
    # result = []
    # arrays.each_with_index do |arr, i|
    #   if i < arrays.length - 1
    #     next_array = arrays[i + 1]
    #     if arr[1] > next_array[0]
    #       new_array = arr + next_array
    #       new_array = new_array.minmax
    #       result << new_array
    #     elsif arr[1] < next_array[0]
    #       # new_array = arr, next_array
    #       # result << new_array
    #       result << arr
    #     end
    #   end
    #   result
    # end

    # idx = 0
    result = []
    arrays_length = arrays.length - 1
    arrays_length.times do
      # eval_merge = arrays[idx], arrays[idx+1]
      # if eval_merge[0][1] >= eval_merge[1][0] # change eval_merge[1][0] to loop over next elements
      #   # eval_merge[each][0] something like this

      #   eval_merge = eval_merge.reduce(:+).minmax
      #   result << eval_merge
      # elsif eval_merge[0][1] < eval_merge[1][0]
      #   result << eval_merge[0] unless result.include?(eval_merge[0])
      #   result << eval_merge[1] unless result.include?(eval_merge[1])
      # end
      # idx += 1
      arrays.each_with_index do |array, idx|
        base = arrays[idx]
        j = idx+1 unless idx+1 >= arrays_length
        nxt = arrays[j]
        if base[1] > nxt[0]
          eval_merge = base, nxt
          testing_method = eval_merge.reduce(:+).minmax
          j += 1
        elsif base[1] < nxt[0]
          result << base unless result.include?(base)
          result << nxt unless result.include?(nxt)
          j += 1
        end
        
      end
    end
    result

    # byebug
  end

  def self.scan_intersections

  end
end
