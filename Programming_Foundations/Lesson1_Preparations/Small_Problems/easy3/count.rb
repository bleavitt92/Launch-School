#Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

#input: word or words as string
#output: how many characters in the string. number. Don't count spaces. 

puts "Please write a word or multiple words: "
input = gets.chomp
output = input.delete(' ').size

puts "There are #{output} characters in #{input}."