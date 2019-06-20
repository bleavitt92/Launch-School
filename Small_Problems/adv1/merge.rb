# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order. You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order. Your solution should not mutate the input arrays.

# input: two arrays
# output: one array made up of all elements from input sorted
# plan: 
# - iterate through each value in the first array
# - - for each value in the first array compare it against the values in the 2nd array
# - - - array2.all? check if value1 < value2 add it to the result array
# - - - else add value 2 to the result array

def merged(array1, array2) # doesn't fully work
  result = []
  counter = 0
  array1b = array1.dup.sort
  array2b = array2.dup.sort
  
  loop do 
    if array1b.empty? == false
      array1b.each do |value1| #finds the smallest value and adds it if in array1
        if array2b.all? { |value2| value1 < value2}
          result << value1
          array1b.delete_at(array1b.find_index(value1))
        end 
      end 
    end
    
    if array2b.empty? == false
      array2b.each do |value2| #finds the smallest value and adds it if in array2
        if array1b.all? { |value1| value2 < value1}
          result << value2
          array2b.delete_at(array2b.find_index(value2))
        end 
      end 
    end 
    
    counter +=1
    break if counter == array1.size + array2.size
  end 
  result
end 


def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 10, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])  == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]