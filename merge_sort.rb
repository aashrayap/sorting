
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
	  if left[0]<right[0]
	    sorted_array << left.shift
	  else
	  	sorted_array << right.shift
	  end	
	end
	
	left.each do |value|
	  sorted_array<<value
	end

	right.each do |value|
	  sorted_array<<value
	end

	return sorted_array

  end
end

mergesort=MergeSort.new
print mergesort.sort([1,51,2,6,7,3,8,19,32,4,55,22,16])