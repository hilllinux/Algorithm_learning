def qa_sort array
    return array if array.size < 2
    left,right = array[1..-1].partition { |y| y <= array.first }
    qa_sort(left) + array.first + qa_sort(right)
end
