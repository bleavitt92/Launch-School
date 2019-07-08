#Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# input: array 1 and array 2
# output: single array
# combine array 1 and array 2. Get rid of duplicates

def merge(array1, array2)
  result = []
  result = array1 + array2
  result.uniq!
end 

p merge([1, 2, 3], [1, 5, 6, 9, 9])



#input: two arrays
#output: combined arrays from input. No duplicates
#add two arrays. use uniq to get rid of duplicates

# def merge(array1, array2)
#   merged_array = (array1 + array2).uniq
#   merged_array
# end 

# p merge([1, 2, 3], [1, 5, 6, 9, 9])