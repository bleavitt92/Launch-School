#Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

#You may assume that words are any sequence of non-blank characters.

# input: string
# output: new string w/ all first letters caps
# separate string into words
# use capitalize
# join string 

def word_cap(string)
  string.split(' ').map {|word| word.capitalize}.join(' ')
end 

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'








#input: string
#output: new string - capitalized words
#split string into individual words. iterate over the array to .capitalize each word. join string back together.

# def word_cap(string)
#   string.split(' ').map(&:capitalize).join(' ')
# end 

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'