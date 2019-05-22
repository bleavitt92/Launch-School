#Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

#get the 6 numbers
#create an array of the first 5 numbers
#test if 6th number is part of that array. Use include?

nums = []
puts "Enter the 1st number: "
nums << gets.chomp.to_i
puts "Enter the 2nd number: "
nums << gets.chomp.to_i
puts "Enter the 3rd number: "
nums << gets.chomp.to_i
puts "Enter the 4th number: "
nums << gets.chomp.to_i
puts "Enter the 5th number: "
nums << gets.chomp.to_i
puts "Enter the 6th number: "
num6 = gets.chomp.to_i

condition = nums.include?(num6)

condition ? (puts "The number #{num6} is included in #{nums}") : (puts "The number #{num6} is not included in #{nums}")