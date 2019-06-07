#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

#input: a string
#output: true/false depending on if string.reverse == string
#create a method that takes an argument string, reverses the string and name it reverse, then is true if reverse == string. 
def palindrome?(string)
  reverse = string.reverse 
  if string == reverse 
    true
  else 
    false
  end 
end 

p palindrome?('abc')
p palindrome?('cbc')
p palindrome?('Cbc')
p palindrome?('CbC')
p palindrome?("madam i'm adam")
p palindrome?('34543')