class BruteForceStrategy
	def inversions(array)
    inversions = 0
    for i in 0..array.size-1      
      current_value = array[i]      
      for j in i+1..array.size-1
        if current_value > array[j]
          inversions = inversions + 1
        end
      end
    end
    inversions
	end	
end