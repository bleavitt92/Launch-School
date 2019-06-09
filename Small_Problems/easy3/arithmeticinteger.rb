#Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

def sum(x, y)
  sum = x+y 
  puts "#{x} + #{y} = #{sum}"
end 

def difference(x, y)
  diff = x-y 
  puts "#{x} - #{y} = #{diff}"
end 

def product(x, y)
  product = x*y 
  puts "#{x} x #{y} = #{product}"
end 

def quotient(x, y)
  quotient = x/y 
  puts "#{x} / #{y} = #{quotient}"
end 

def remainder(x, y)
  rem = x%y 
  puts "#{x} % #{y} = #{rem}"
end 

def power(x, y)
  power = x**y 
  puts "#{x} ** #{y} = #{power}"
end 

puts "Enter the 1st positive integer: "
num1 = gets.chomp.to_i
puts "Enter the 2nd positive integer: "
num2 = gets.chomp.to_i

sum(num1, num2)
difference(num1, num2)
product(num1, num2)
quotient(num1, num2)
remainder(num1, num2)
power(num1, num2)