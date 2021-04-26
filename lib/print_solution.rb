# Tenemos un array con arrays adentro de length 2 en el cual se tienen que mergear los que se solapen
# Performance / buenas practicas
# Rspec tests with dummy arrays

class PrintSolution
  def self.merge_array(arrays)
    arrays.each_with_index do |_, index|
      base = arrays[index]
      nxt = arrays[index + 1]
      arrays_length = arrays.length - 1
      break unless index < arrays_length

      if base[1] >= nxt[0]
        arrays[1..-1].each do |array|
          nxt = array
          break if base[1] < nxt[0]

          arrays -= [base, nxt]
          base = [base, nxt].reduce(:+).minmax
          arrays.unshift(base)
        end
      elsif base[1] < nxt[0]
        arrays << base unless arrays.include?(base)
        arrays << nxt unless arrays.include?(nxt)
      end
    end
    arrays
  end
end
