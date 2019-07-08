#Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

#Do not use the method Array#rotate or Array#rotate! for your implementation.

# input: array
# output: new array with first element on end

def rotate_array(array)
  output = []
  i = 1
  loop do 
    break if i == (array.size)
    output << array[i]
    i += 1
  end
  output << array[0]
end









#input: array
#output: array with the first element moved to the end 
#use the use array<<array.delete_at(0) to move the first character to the end. Need to create a new array as to not change the original 

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end 

p rotate_array([1, 2, 3, 4])
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x                # => true