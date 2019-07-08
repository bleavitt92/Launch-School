# find all substrings of two strings that are the same

# input: 2 strings
# output: array of strings
# first need to find the substrings of each string so create a method for that 
# -- need output array - initialize it first
# -- from index 0 -> string.length-1 is starting point for each substring
# -- from index 1 --> string.length-1 is ending point for each substring
# -- << string[index1..index2]
# -- delete any substrings in the array that are less than length 2

# find all matching substrings from two strings. define the method 
# create an array of substrings for each string passed into the method
# iterate through the first substring array and use include? to see if that string is in the 2nd array
# if it does include it, add that substr to an output array

def find_substrings(string)
  substring_arr = []
  (0..string.length-1).each do |index1|
    (1..string.length-1).each do |index2|
      substring_arr << string[index1..index2]
    end 
  end
  substring_arr.delete_if { |str| str.length < 2 }
end

def equal_substrings(string1, string2)
  array1 = find_substrings(string1)
  array2 = find_substrings(string2)
  equal_strings = []
  array1.each do |substr|
    if array2.include?(substr)
      equal_strings << substr
    end
  end
  equal_strings
end

p equal_substrings('hello', 'jelley')