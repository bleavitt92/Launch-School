#Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

#input a string
#output a string with words reversed 
#need to take the original string, separate it by words, then reverse just the words, not the order of each letter within the words. Maybe do this with index numbers, so turn string into an array, reverse each index number.

def reverse_sentence(string)
  string = string.split
  string = string.reverse
  string = string.join(' ')
end 
 
#could have done all on one line as string.split.reverse.join(' ')

puts reverse_sentence('')
puts reverse_sentence('Hello World') 
puts reverse_sentence('Reverse these words')
