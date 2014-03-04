load 'quick_sort.rb'
load 'quick_sort_official.rb'
load 'random_quick.rb'

test_array=Array.new(10){Random.rand(1..100)}
p test_array
test_array1 = test_array.clone
qa_sort test_array,0,test_array.length-1
p test_array
p test_array1
