# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen

# Performance / buenas practicas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'

class PrintSolution

  def compare_base_with_remaining(base,nxt,tmp)
    
  end

  def self.merge_array(arrays)
    tmp = arrays
    tmp.each_with_index do |_, index|
      base = tmp[index]
      nxt = tmp[index + 1]
      arrays_length = tmp.length - 1
      break unless index < arrays_length

      #compare_base_with_remaining(base,nxt,tmp)
      if base[1] >= nxt[0]
        tmp[1..-1].each do |nxt|
          break if base[1] < nxt[0] 
          tmp -= [base, nxt]
          base = [base, nxt].reduce(:+).minmax
          tmp.unshift(base)
        end
      elsif base[1] < nxt[0]
        tmp << base unless tmp.include?(base || merged)
        tmp << nxt unless tmp.include?(nxt || merged)
      end
    end
    tmp
  end
end
