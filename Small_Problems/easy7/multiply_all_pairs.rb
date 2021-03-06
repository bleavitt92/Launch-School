#Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

#You may assume that neither argument is an empty Array.

# input: two arrays
# output: new array w/ product of arrays
# iterate over array 1 using map and multiply by every value in array 2.
# sort resulting array

def multiply_all_pairs(array1, array2)
  result = array1.map do |num1|
    array2.map {|num2| num1*num2 }
  end 
  result.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]








#input: 2 arrays
#output: 1 array
#take the product of array = arr1.product(arr2). iterate over the array using each. arr[0]*arr[1]

# def multiply_all_pairs(arr1, arr2)
#   products = []
#   arr1.product(arr2).each do |arr| 
#     products << arr[0]*arr[1]
#   end 
#   products.sort
# end 

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]