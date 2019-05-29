#Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

#input: integer
#output:integer - reverse the number
#take the integer and use .digits to create an array. digits reverses the array. use join to join it back and convert to integer using to_i
#**can't use digits because of leading 0's. gets messed up. 
#New plan: change number to a string. reverse the string. change back to integer

def reversed_number(num)
  string = num.to_s
  string.reverse.to_i 
end 

p reversed_number(12345)
p reversed_number(1004)
p reversed_number(002155)