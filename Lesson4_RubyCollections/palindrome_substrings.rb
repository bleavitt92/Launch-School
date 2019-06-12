# Given a string, write a method 'palindrome_substrings' which returns 
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive. 

# Test cases: 

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# input: string
# output: array of strings
# rules: 
  # palindromes are case sensitive - so 'abBA' is not a palindrome
  # within one word, can return just parts of that word. ex abdadli => 'dad'
  # empty string returns empty array
  # string with no palindrome substrings returns empty array
# questions: 
  # can my input string be more than one word?
  # do spaces count?
  # do I return a new object as the substring or modify the original string?
  # will inputs always be strings?
  
# Algorithm: 
# substring_arr method
# ====================
# - create an empty array called 'result' that will contain all 
#   the required substrings
# - initialize variable start_substring_idx and assign 0 to it. 
# - initialize variable end_substring_idx and assign value of 
#   start_substring_idx + 1 to it. 
# - Enter loop which will break when start_substring_idx is equal to str.size
#   - Within that loop enter another loop that will break if end_substring_idx 
#     is equal to str.size
#      - append to the result array part of the string from start_substring_idx
#      to end_substring_idx
#      - increment end_substring_idx by 1. 
#   - end the innter loop
#   - increment start_substring_idx by 1. 
#   - reassign end_substring_idx to start_substring_idx + 1
# - end outer loop
# - return result array

# is_palindrome? method
# ======================
# - Inside the is_palindrome? method, check whether the string value is equal
#   to its reversed value. Use string.reverse

# palindrome_substrings method
# ============================
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the 
#    substrings of the input string that are at least 2 characters long. 
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result array
#  - return the result array


def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do 
    break if start_substring_idx == str.size
    loop do 
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
    end_substring_idx += 1
  end
  start_substring_idx += 1
  end_substring_idx = start_substring_idx + 1
  end 
  result 
end 

def is_palindrome?(string)
  string == string.reverse
end 

def palindrome_substrings(string)
  result = []
  substring_arr = substrings(string)
  substring_arr.each do |substring|
    if is_palindrome?(substring)
      result << substring
    end 
  end 
  result
end 

palindrome_substrings('supercalifragilisticexpialidocious')
    