#Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def sumofnums(number)
  sum = (1..number).inject{|sum, n| sum + n}  
end 

def productofnums(number)
  product = (1..number).inject{|product, n| product*n}
end 

puts "Please enter an integer greater than 0."
num = gets.chomp.to_i 
puts "Enter 's' to compute the sum. Enter 'p' to compute the product." 
operation = gets.chomp

loop do 
  if operation == 's'
   sum = sumofnums(num)
    puts "The sum of numbers 1 to #{num} is #{sum}"
    break
  elsif operation == 'p'
    product = productofnums(num)
    puts "The product of numbers 1 to #{num} is #{product}"
    break
  else 
    puts "Invalid input. Please enter 's' for sum and 'p' for product."
    operation = gets.chomp
  end 
end 