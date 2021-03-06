#Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring

# input: string
# output: array of substrings that are only from beginning of string
# iterate from 0 to string.length using string index to add to an array
# need result array

def substrings_at_start(string)
  result = []
  0.upto(string.size-1) do |i|
    result << string[0..i]
  end 
  result
end

p substrings_at_start('abcdef')
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']







#input: string 'abcd'
#output: array of substrings in order - ['a', 'ab', 'abc', 'abcd']
#create an empty array. change string to an array. iterate over the string array and use the slice method to slice at that letter each time. slice(0, n+1 ). join array back. 
#put each answer into the array using <<

# def substrings_at_start(string)
#   substrings = []
#   string_arr = string.chars
#   string_arr.each_index do |letter|
#     substrings << string.slice(0, letter+1)
#   end 
#   substrings
# end 



# #OR 
# def substrings_start(string)
#   begin_substrings = [] 
#   1.upto(string.length) do |index|
#     begin_substrings << string[0, index]
#   end 
# end 