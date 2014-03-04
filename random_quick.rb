def partition array,first,last
   sentitnel,index = array[last],first-1 
   (first..last-1).each { |x|
       if array[x] <= sentitnel then
           index = index+1
	   array[index],array[x]=array[x],array[index]
       end
   }

   array[index+1],array[last] = array[last],array[index+1]
   return index+1
end

def random_partition array,first,last
    index = Random.rand(first..last)
    array[index],array[last] = array[last],array[index]
    return partition array,first,last
end

def random_quick_sort array,first,last
    return if first >= last
    pivot = random_partition array,first,last
    random_quick_sort array,first,pivot-1
    random_quick_sort array,pivot+1,last
end

