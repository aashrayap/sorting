#from wikipedia

class MergeSort
  def initialize
  end

  def sort(array)
  	return array if array.size==1
  	middle=array.size/2
  	left=array[0,middle]
  	right=array[middle,array.size]
  	merge(sort(left),sort(right))
  end


  def merge(left,right)
  	sorted_array=[]
  	until left.size==0 || right.size==0
  	  if left.first <= right.first
  		sorted_array << left.shift
  	  else
  	  	sorted_array<<right.shift
  	  end
  	end
  	return sorted_array.concat(left).concat(right)
  end
end

mergesort=MergeSort.new
print mergesort.sort([1,5,2,6,7,3,8])