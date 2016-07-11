class Sorting
  def insersion_sort(unsorted)
    sorted=[]
    unsorted.size.times do 
    unsorted_value=unsorted.pop
    if sorted.size==0
    	sorted.push(unsorted_value) 
    	next
    end
   	insert_value(sorted,unsorted_value)
	end
	print sorted
  end


  def insert_value(sorted,unsorted_value)
  	sorted.each_with_index do |sorted_value,index|
  	  if unsorted_value < sorted_value
  	  	sorted.insert(index,unsorted_value)
  	  	return sorted 
  	  else

  	  	if sorted[index]==sorted[-1]
  	  	  sorted.insert(index+1,unsorted_value) 
  	  	  return sorted
  	  	else
  	  	  next
  	 	end

  	  end
  	end
  	return sorted
  end
end



s=Sorting.new
s.insersion_sort([0,6,5,3,8,2])