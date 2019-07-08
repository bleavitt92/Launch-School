#Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# input: integer
# output: integer reversed order

def reversed_number(n)
  n.to_s.reverse.to_i
end 

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1












#input: integer
#output:integer - reverse the number
#take the integer and use .digits to create an array. digits reverses the array. use join to join it back and convert to integer using to_i
#**can't use digits because of leading 0's. gets messed up. 
#New plan: change number to a string. reverse the string. change back to integer

# def reversed_number(num)
#   string = num.to_s
#   rev_string = string.reverse
#   rev_string.to_i
# end 
