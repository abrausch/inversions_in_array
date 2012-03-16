class DivideAndConquerStrategy
  def merge(left,right)
    sorted = []
    inversions = 0    
    until left.empty? or right.empty?
      if left.first <= right.first        
        sorted << left.shift
      else
        sorted << right.shift

        if !left.empty?
          inversions = inversions + left.size
        end
      end      
    end

    return inversions, sorted.concat(left).concat(right)
  end

  def sort_and_calculate_inversions(array)
    return 0, array if array.size <= 1

    mid = array.size / 2
    left = array[0,mid]
    right = array[mid,array.size - mid]

    merge(sort_and_calculate_inversions(left)[1],sort_and_calculate_inversions(right)[1])
  end

  def inversions(array)    
    sort_and_calculate_inversions(array)[0]
  end
end