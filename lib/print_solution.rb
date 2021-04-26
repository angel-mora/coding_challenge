# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen

# Performance / buenas practicas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'

class PrintSolution
  def self.merge_array(arrays)
    tmp = arrays
    #index = 0
    arrays.each_with_index do |array, index|
      base = tmp[index]
      nxt = tmp[index + 1]
      arrays_length = tmp.length - 1
      break unless index < arrays_length

      if base[1] >= nxt[0]
        tmp -= [base, nxt]
        base = [base, nxt].reduce(:+).minmax
        tmp.unshift(base)
        # byebug
        
        # # testing inside evaluation
        # if base[1] >= tmp[index][0]
        #   base = [base, nxt].reduce(:+).minmax
        #   tmp << base unless tmp.include?(base)
        # end
        # puts tmp

      elsif base[1] < nxt[0]
        tmp << base unless tmp.include?(base || merged)
        tmp << nxt unless tmp.include?(nxt || merged)
      end
    end
    tmp
  end
end
