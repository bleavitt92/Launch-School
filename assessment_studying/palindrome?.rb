# write a method to determine if a word is a palindrome without using reverse

# input: string
# output: boolean
# need to see is string is the same forwards as it is backwards
# examples: toot, abba, hannah
# build the reverse of the given string and store it in a new string object
# if original string == new string, true
# how to build the reverse of the string: 
# initiate an empty string and i = 0
# loop breaks when i == string.length
# << string[-i]
# i += 1

def palindrome?(string)
  reversed_string = ''
  i = -1
  loop do 
    reversed_string << string[i]
    i -= 1
    break if i < -string.length
  end
  reversed_string == string
end

p palindrome?('hiih')
p palindrome?('hello')