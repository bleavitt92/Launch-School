# write a method that takes number and returns a string with dash in between odd digits

def dasherizer(num)
  array = num.to_s.chars
  index = -1
  output = array.map do |num|
    index += 1
    if num.to_i.odd? && array[index + 1].to_i.odd?
      num = num + '-'
    else
      num
    end
  end 
  output.join
end

p dasherizer(2112)
p dasherizer(123456)
p dasherizer(123457590189)

# Given the string of chars a..z A..Z do as in the sample cases



# input: string
# output: string
# initialize an output string
# splitting input string using .chars into an array
# num = 0
# use .each to iterate over the array
# << letter.upcase
# for each letter num.times add that letter to the output string
# << a '-' to the output string
# num += 1




# def accum(string)
#   output = ''
#   string.chars.each_with_index do |char, indx|
#     output << char.upcase
#     output << char.downcase * indx
#     unless indx == string.chars.length-1
#       output << '-'
#     end 
#   end
#   output
# end

# p accum("abcd") == "A-Bb-Ccc-Dddd"
# p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# p accum("cwAt") == "C-Ww-Aaa-Tttt"



# given a number, find all the non-prime, odd numbers between 1 and to that given number.

# return the number of non-prime, odd numbers.

# input: integer
# output: integer representing the number on non-prime, odd numbers
# need a method to find prime numbers 
# prime numbers are only divisible by 1 and themselves. 
# range of divisors for n is (2..n-1)
# iterate over the range of divisors and for each one, test if the input number % divisor == 0. If that is ever true, then the number is not prime

# def is_prime?(n)
#   (2..n-1).each do |divisor|
#     if n % divisor == 0 
#       return false
#     end 
#   end
#   true
# end

# def find_primes_and_odds(n)
#   output = []
#   (2..n).each do |num| 
#     if is_prime?(num) && num.odd?
#       output << num
#     end
#   end
#   output
# end

# def how_many_primes_and_odds?(n)
#   array = find_primes_and_odds(n)
#   array.count
# end

# take a string of words, each letter in a word has a score based on position on alphabet. find the word with the highest total score and return that word.

# input: string
# output: string - just the word with the highest score
# create a hash with letters a-z as keys and values 1-26. 
# initiate an empty hash
# (a..z) each add to hash with (1..26) 

# split string into an array of words using .split(' ')
# # iterate over the array of words and split each word into an array of letters
# # # need to calculate how many points each word is going to be using the hash
# # # when iterate over each letter use word_score += hash[letter] 

# def initiate_hash
#   hash = {}
#   count = 1
#   ('a'..'z').each do |letter| 
#     hash[letter] = count
#     count += 1
#   end
#   hash
# end

# def highest_score(string)
#   hash = initiate_hash
#   scores = []
#   word_array = string.downcase.split(' ')
#   word_array.each do |word|
#     score = 0
#     word.chars.each do |letter|
#       score += hash[letter]
#     end
#     scores << score
#   end
#   word_array[scores.find_index(scores.max)]
# end

# p highest_score('Hi my name is Betsy. What is your name?')