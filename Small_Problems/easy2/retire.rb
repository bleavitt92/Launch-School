#Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "How old are you?"
age = gets.chomp.to_i
puts "How old would you like to be when you retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = (retirement_age - age) + current_year
years_left = (retirement_age - age) 

puts "It is 2019 now, you will be able to retire in the year #{retirement_year}."
puts "You have only #{years_left} years of work to go!"