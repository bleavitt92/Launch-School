#n the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

#Write a method that takes a positive integer or zero, and converts it to a string representation.

#You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

#input: integer
#output: string version of the integer. 
#take the integer, split into an array, use a hash to change each integer to a string number, map over the array to do this, combine the string using ''+''. 
def integer_to_string(num) 
  hash = {
    0=>'0',
    1=>'1',
    2=>'2',
    3=>'3',
    4=>'4',
    5=>'5',
    6=>'6',
    7=>'7',
    8=>'8',
    9=>'9'
  }
  string = ''
  num.digits.reverse.map{|n| string << hash[n]}
  string
end 

p integer_to_string(0)
p integer_to_string(1234)
p integer_to_string(5000)