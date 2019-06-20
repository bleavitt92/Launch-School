# Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

# input: array
# output: array sorted
# use array[index].concat(array[index]) and then sort each time
# plan: 
# - break array into half, then half again, etc until just one value in each sub array
# - combine in the reverse order and sort
# - - array[0].concat(array[1]), 2 with 3, 4 with 5 and so on

def merge_sort(array)
  return array if array.size == 1  # once arrays get down to 1, will skip the recursive part
  
  sub_arr1 << array[(0...array.size/2)]
  sub_arr2 << array[array.size/2...array.size]
  
  sub_arr1 = merge_sort(sub_arr1)
  sub_arr2 = merge_sort(sub_arr2)
  
  merge(sub_arr1, sub_arr2) # from previous exercise
end 