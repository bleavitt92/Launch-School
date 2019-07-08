#Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

#You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

# input: string
# output: array

def word_lengths(string)
  output = []
  array = string.split(' ')
  array.map { |word| output << "#{word} #{word.length}" }
  output
end


p word_lengths('hello you')







#input: string
#output: array with each word that looks like "word wordlength"
#use .split(' ') to break the string up to an array of words. Then iterate through each adding each word to a new array along with it's word.length. 

# def word_lengths(string)
#   result = []
#   string.split(' ').each do |word|
#     result << word + ' ' + word.length.to_s
#   end 
#   result
# end 

p word_lengths('cow sheep chicken')  
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []