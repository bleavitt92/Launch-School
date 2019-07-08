# write a method that will return a substring based on specified indecies

# input: string, starting index, ending index
# output: string
# split the string into an array of characters to access each character by its index

def substring(string, index1, index2 = index1)
  string.chars[index1..index2].join
end

substring("honey", 0, 2) # => 'hon'
substring('honey', 3, 9) # => 'ey'
substring('honey', 2) # => 'n'

def all_subs(string)
  output = []
  0.upto(string.length) do |idx1|
    (idx1 + 1).upto(string.length) do |idx2|
      output << substring(string, idx1, idx2)
    end 
  end
  output.delete_if { |str| str.length <2 }
end

all_subs('world')


# find all substrings in a string - 2+ letters

def find_substrings(string)
  substrings = []
  0.upto(string.length-1) do |index1|
    (index1 + 1).upto(string.length-1) do |index2|
      substrings << string[index1..index2]
    end
  end
  substrings
end

find_substrings('hello')

# another way

def all_substrings(string)
  output = []
  string.chars.each_with_index do |char, index|
    0.upto(string.length) do |n|
      output << string[index, n]
    end
  end
  output.delete_if { |str| str.length < 2 }
  output.uniq
end

all_substrings('hello')

# write a method that returns all palindromic strings
# input: string
# output: array of strings
# first use all_substrings method to find all substrings of a string and set it equal to an array substrings. 
# iterate through that array and work with each substring one at a time. If it is a palindrome, add it to the output array, if not, dont. 

# how to tell if substring is a palindrome: must be same forward and backwards
# # ex: aba, baab, cabbac, etc
# string == string.reverse

def palindromic_substrings(string)
  substrings = all_substrings(string)
  palindromes = []
  substrings.each do |substr|
    if substr == substr.reverse
      palindromes << substr
    end
  end
  palindromes
end

p palindromic_substrings('ppop')

# find largest palindrome

def largest_palindrome(string)
  pal_strings = palindromic_substrings(string)
  lengths = pal_strings.map { |substr| substr.size }
  index = lengths.find_index(lengths.max)
  pal_strings[index]
end

p largest_palindrome('ppop')