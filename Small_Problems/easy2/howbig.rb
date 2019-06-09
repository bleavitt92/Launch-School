#Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
#Note: 1 square meter == 10.7639 square feet
#Do not worry about validating the input at this time.

#Input: length and width of a room. Given as a string of numbers
#Output: area of room - integer - both in meters and feet
#First as the user for the length and width of a room in meters. Then convert string to integers so that we can multiply them together for area. Convert to feet. Display both. 


SQMETERS_TO_SQFEET = 10.7639        #it is good practice to store like this when number won't be immediately recognized

puts "What is the length of your room in meters?"
length = gets.chomp.to_f
puts "What is the width of your room in meters?"
width = gets.chomp.to_f

area = length*width 
areafeet = area*SQMETERS_TO_SQFEET 

puts "The area of your room is #{area} square meters or #{areafeet} square feet."
