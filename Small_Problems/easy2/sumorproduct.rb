#Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0."
num = gets.chomp.to_i 
puts "Enter 's' to compute the sum. Enter 'p' to compute the product." 
operation = gets.chomp

array = (1..num).to_a
if operation == 's'
  array_sum = 0
  array.each do |i|
    array_sum = i + array_sum
  end 
  puts "The sum of the integers between 1 and #{num} is #{array_sum}" 
else
  array_product = 1
  array.each do |i|
    array_product = i*array_product
  end 
  puts "The product of the integers between 1 and #{num} is #{array_product}"
end 
