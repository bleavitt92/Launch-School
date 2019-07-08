# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

# input: two strings - string1, string2
# output: true or false
# plan: need to go through string 1 and parse it into an array of substrings of different lengths. Same for string 2.
  # then, check the substring arrays for matching strings

# def substring(string)
#   substrings = []
#   1.upto(string.length-1) do |index|
#     0.upto(string.length-2) do |this_index|
#     substrings << string[this_index..index]
#   end
#   end
#   substrings.delete_if { |str| str.length < 2 }
#   substrings
# end

# def substring_test(str1, str2)

#   substring_arr1 = substring(str1)
#   substring_arr2 = substring(str2)

#   substring_arr1.each do |substr1|
#     substring_arr2.each do |substr2|
#       if substr1.downcase == substr2.downcase
#         return true
#       end 
#     end 
#   end 
#   false
# end


def find_substrings(string)
  substrings = []
  0.upto(string.length-1) do |index1|
    1.upto(string.length-1) do |index2|
      substrings << string[index1..index2]
    end 
  end 
  substrings.delete_if { |str| str.length < 2}
end 

def substring_test(str1, str2)
  array1 = find_substrings(str1)
  array2 = find_substrings(str2)
  
  array1.each do |substring1|
    array2.each do |substring2|
      return true if substring1.downcase == substring2.downcase
    end 
  end 
  false
end

p substring_test('Something', 'Fun') ==  false 
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true