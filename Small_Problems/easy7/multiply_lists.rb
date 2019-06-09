#Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

#inputs: two arrays
#output: one array - first*first, second*second, etc. 
#loop starting a counter at 0. array1[0]*array2[0] - add that to new array. increase counter by 1. go until counter = array size. 

def multiply_list(arr1, arr2)
  i = 0
  output = []
  while i<arr1.size do 
    output << arr1[i]*arr2[i]
    i +=1
  end 
  output
end 

multiply_list([1, 2, 3], [10, 20, 30])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#using each_with_index
def multiply_lists(arr1, arr2)
  output = []
  arr1.each_with_index do |num, index|
    output << num*arr2[index]
  end 
  output
end 

p multiply_lists([1, 2, 3], [10, 20, 30])
