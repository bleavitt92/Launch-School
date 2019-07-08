#Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

#You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# input: array
# output: new array with elements in reverse order
# initialize an empty output array
# loop through and add items to the output array starting with the very last element in the input array. Use array.size-1 for the index. 
# each iteration, subtract 1 from index
# break the loop when index < 0

def reverse(array)
  output = []
  index = array.size-1
  loop do 
    output << array[index]
    index -=1
    break if index < 0
  end 
  output
end 

reverse([1, 2, 3, 4, 5])








#input array
#output - new array
#add each element 1 by 1 from the end of original array to the new array

# def reverse(array)
#   rev_array = []
#   i = 0
#   while i < array.size 
#     rev_array.unshift(array[i])
#     i +=1
#   end 
#   rev_array
# end 

a = [1, 2, 3, 4, 5]
p rev1 = reverse(a)
p a.object_id != rev1.object_id
