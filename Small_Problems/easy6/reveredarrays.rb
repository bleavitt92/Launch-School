#Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.
#may not use reverse or reverse!

# input: array
# output: same array - just reverses the elements
# iterate through the array. Take each element as you get to it and move it to the beginning of the array. 
# or
# i = 0 and last_index = array.size - 1
# loop and swap array values
# array[i], array[last_index - 1] = array[last_index - 1] array[i]
# break when i is half the array size -1

def rev(array)
  index = 0
  last_index = array.size-1
  loop do 
    array[index], array[last_index] = array[last_index], array[index]
    index += 1
    last_index -=1
    break if index == (array.size-1) / 2
  end 
  p array
end

a = [1, 2, 3, 4]
b = rev(a) 
puts a.object_id
puts b.object_id

c = %w(a b c d e)
d = rev(c)
puts c.object_id
puts d.object_id
















#input: array
#output: array - same object - just reversed 
#use objectid to check if same object. Use each to iterate over the array

# def rev(array)
#   n = array.size
#   loop do 
#     array << array.delete_at(n-1)
#     n-=1 
#     break if n < 0
#   end 
#   p array
# end 

# a = [1, 2, 3, 4]
# b = rev(a) 
# puts a.object_id
# puts b.object_id

# c = %w(a b c d e)
# d = rev(c)
# puts c.object_id
# puts d.object_id