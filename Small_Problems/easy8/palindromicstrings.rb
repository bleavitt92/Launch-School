#Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

#You may (and should) use the substrings method you wrote in the previous exercise.

#For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# input: string
# output: string - only palindromic substrings
# iterate through the array created by substrings method in previous exercise. If string == string.reverse, add to output

def substrings(string)
  result = []
  0.upto(string.size-1) do |index1|
    index1.upto(string.size-1) do |index2|
      result << string[index1..index2]
    end 
  end
  result
end

def palindromes(string)
  output = []
  substrings(string).map do |substr|
    if substr == substr.reverse and substr.length > 1
      output << substr
    end 
  end 
  output
end 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]  

#input: string
#output: array of strings
#need to check strings for palindromes (i.e. - abcba). Use the substrings method to find all substrings of a string. Go through each substring in the array that is created and use it if it is a palindrome
  #Check if it's a palindrome by using string.reverse. Use substrings method to add all substrings to an array IF string = reverse

# def substrings_start(string)
#   begin_substrings = [] 
#   1.upto(string.length) do |index|
#     begin_substrings << string[0, index]
#   end 
#   begin_substrings
# end 

# def substrings(string)
#   result = []
#   0.upto(string.length-1) do |this_index| 
#     this_string = string[this_index..-1]
#   result <<  substrings_start(this_string)
#   end 
#   result
# end 

# def palindromes(string)
#   subs = substrings(string).flatten
#   result = []
#   subs.each do |word|
#     reverse = word.reverse
#     if word.length ==1
#       next
#     elsif word == reverse
#       result << word 
#     end 
#   end 
#   result
# end 

