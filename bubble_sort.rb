class BubbleSort
  def sort(unsorted)
  	@unsorted=unsorted

  	unsorted.size.times do
  	runthrough
 	end
 	print @unsorted

  end

  def runthrough
  	@unsorted.each_with_index do |value,index|
  	  if @unsorted[index]==@unsorted[-1]
  		return 
  	  elsif @unsorted[index] > @unsorted[index+1]
  	  	@unsorted[index],@unsorted[index+1] = @unsorted[index+1],@unsorted[index]
  	  end
  	end
  end

end


b=BubbleSort.new
b.sort([2,1,3,0,19,18,12,33,42,77,55,35,21])