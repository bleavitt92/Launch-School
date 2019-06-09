# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

#Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

#For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

#input: string of numbers
#output: numbers
#take the string, separate them into an array using string.chars. Now have an array of individual numbers as individual strings. Next, iterate over each element in the array using map to change each element to an integer. create a hash?


def string_to_integer(string)
  str_to_num = {
    '1'=>1,
    '2'=>2,
    '3'=>3,
    '4'=>4,
    '5'=>5,
    '6'=>6,
    '7'=>7,
    '8'=>8,
    '9'=>9,
    '0'=>0
  }
  
  integers = string.split('').map {|s| s = str_to_num[s]} 
  value = 0
  integers.each { |i| value = 10 * value + i }
  value
end 

p string_to_integer('1234')
p string_to_integer('12')