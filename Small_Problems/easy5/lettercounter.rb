#Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

#Words consist of any string of characters that do not include a space.

#input: string of words
#output: hash that is number of letters => how many words with that many letters
#take the string, separate it into each word in an array using split. From that array, count each word using size, creating a new array just of the word counts. 
#count number of times each number occurs in the new array. Loop through starting with counting the number of times that 1 occurs up to the number of times that the greatest number occurs. 

def word_sizes(string)
  size = []
  string.split(' ').each{|word| size << word.size}
  biggest = size.max 
  if biggest == nil
    biggest = 0
  end 
  output = {}
  i = 1
  loop do 
    output[i] = size.count(i)
    i+=1
    if i>biggest
      break
    end 
  end 
  output.delete_if {|k, v| v<= 0}
  output
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}