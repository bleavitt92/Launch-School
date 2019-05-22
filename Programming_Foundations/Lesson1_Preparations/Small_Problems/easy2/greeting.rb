#Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

#Ask for name. Create a conditional if the user enters a ! (use include?) the computer responds in all caps and asks why they're screaming. Else, the computer just responds with hello. 

puts "Hi, what is your name?" 
name = gets.chomp
capsname = name.upcase.chop 

if name.include?('!')
  puts "HEY, #{capsname}. WHY ARE WE SCREAMING?!"
else 
  puts "Hey, #{name}."
end 