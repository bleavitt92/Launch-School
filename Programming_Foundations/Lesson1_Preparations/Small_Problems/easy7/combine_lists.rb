#Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

#You may assume that both input Arrays are non-empty, and that they have the same number of elements.

#input: 2 arrays
#output: 1 array. alternating values from the two inputs
#create a new array. loop through setting a counter = 0. Add from array1[0] then add from array2[0]. increase counter by 1. continue. break when counter == array.size

def interleave(arr1, arr2)
  i = 0
  array = []
  loop do 
    array << arr1[i] << arr2[i]
    i +=1
    break if i == arr1.size
  end 
  p array
end 

interleave([1, 3, 5], [2, 4, 6])