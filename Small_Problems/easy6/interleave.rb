# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# input: two arrays
# output: single array
# initiate result array and set index = 0
# loop through the first array taking the first element and adding it to the result array. then same with second array. Add 1 to index. break when index > array.size.

def interleave(arr1, arr2)
  index = 0
  result = []
  loop do 
    result << arr1[index] 
    result << arr2[index]
    index +=1
    break if index == arr1.size
  end 
  p result
end 

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
