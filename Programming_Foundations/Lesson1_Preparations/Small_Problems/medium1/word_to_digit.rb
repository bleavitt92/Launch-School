#Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

#input: string
#output: string with some words changed
#need to split up the string into individual words using .split and iterate over each word checking if number. If not, add that word to the string, if so, change that word to it's value from hash. 
#need a hash for 'number' => 'n'

def word_to_digit(string)
  num_hash = {'zero'=>'0', 'one'=>'1', 'two'=>'2', 'three'=>'3', 'four'=>'4', 'five'=>'5', 'six'=>'6', 'seven'=>'7', 'eight'=>'8', 'nine'=>'9', 'ten'=>'10'}
  new_string = ''
  string.split.map do |word|
    if num_hash.include?(word)
      word = num_hash[word]
    end 
    new_string += ' ' + word
  end 
  p new_string.strip
end 

#Another way
def words_to_digit(string)
    num_hash = {'zero'=>'0', 'one'=>'1', 'two'=>'2', 'three'=>'3', 'four'=>'4', 'five'=>'5', 'six'=>'6', 'seven'=>'7', 'eight'=>'8', 'nine'=>'9', 'ten'=>'10'}
    num_hash.keys.map do |word|
      string.gsub!(/\b#{word}\b/, num_hash[word])
    end 
    p string
end 
    
    
    
words_to_digit('hey there you two three!')
