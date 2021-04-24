# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
 
# Performance / buenas prácticas
# Rspec tests with dummy arrays
require 'byebug'
require 'benchmark'

class PrintSolution

  def self.merge_array(arrays)
    result = []
    arrays_length = arrays.length - 1
    idx = 0
    base = arrays[idx]
    arrays_length.times do
      j = idx + 1
      nxt = arrays[j]
      condition = base[1] >= nxt[0]
      until idx == arrays_length
        case condition
        when true
          merged = [base, nxt].reduce(:+).minmax
          base = merged
          result << base
        when false
          result << base
          result << nxt if nxt
          base = nxt if nxt
        end
        idx += 1
        j += 1
      end
    end
    result
  end
end
