# input: string
# output: new string - first letter of every word capitalized
# take the input string and split into an array of words
# iterate through each word using .map to capitalize each word
# return the new string after joining it back together

def word_cap(string)
  output = string.split(' ').map do |word|
    word.capitalize
  end
  output.join(' ')
end

word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word')

#DATE CLASS

require 'date'

def friday_13th?(year)
  count = 0
  (1..12).each do |month|
    if Date.new(year, month, 13).friday?
      count += 1
    end
  end
  count
end

friday_13th?(2015)
friday_13th?(1986)

# random math problem

# input: n, integer - determines how many operations
# output: string
# use .sample function to pick n+1 values from numbers and n values from operations. 
# first, initialize an empty output string
# n.times add numbers.sample + operations.sample to output string
# finish with adding a final numbers.sample to the output string

NUMBERS = %w(zero one two three four five six seven eight nine)
OPERATIONS = %w(plus minus times divided)

def math_phrases(n)
  output = ''
  n.times do
    output << NUMBERS.sample + ' '
    output << OPERATIONS.sample + ' '
  end
  output << NUMBERS.sample
  output.gsub!('divided', 'divided by')
  output
end

p math_phrases(3)
