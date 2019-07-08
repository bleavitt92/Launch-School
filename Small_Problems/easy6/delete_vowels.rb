#Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# input: array of strings
# output: array of same string values without a, e, i, o, or u
# iterate through the array of strings using .map! 
# - - use string.chars to get an array of each letter in the string
# - - iterate through each character deleting it if it is a, e, i , o, or u
# - - join the character array back together

def remove_vowels(array_of_strings)
  array_of_strings.map! do |string|
    string.chars.delete_if { |char| char.match(/[aeiouAEIOU]/) }.join
  end 
end 



# #input: array of strings
# #output:array of string with vowels removed
# #use .delete to delete a, e, i ,o, u from the string

# def remove_vowels(stringarray)
#   stringarray.each do |string|
#     string.delete! "a, e, i, o, u, AEIOU"
#   end 
# end 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']