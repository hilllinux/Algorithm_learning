def media3 array,left,right
    middle =(left+right)/2 
    middle = middle.to_i
    array[left], array[middle]    = array[middle],array[left]  if array[left] > array[middle]
    array[left], array[right]     = array[right],array[left]   if array[left] > array[right]
    array[middle], array[right]   = array[right],array[middle] if array[middle] > array[right]
    array[middle], array[right-1] = array[right-1],array[middle]
    return array[right-1]
end

def q_sort array,left,right
    return if left >= right
    povit = media3 array,left,right
    start,last = left,right-2
    while true
        start = start + 1 while array[start] < povit
        last  = last  - 1 while array[last]  > povit
        if start < last then array[start], array[last] = array[last],array[start]
        else break
        end
    end

    array[start],array[right-1] = array[right-1] , array[start]

    q_sort array,left,start-1
    q_sort array,start+1,right
end

test_array = Array.new
0.upto(15).each {|x| test_array.push Random.rand(0..100)}
p test_array
q_sort test_array,0,test_array.length-1
p test_array

