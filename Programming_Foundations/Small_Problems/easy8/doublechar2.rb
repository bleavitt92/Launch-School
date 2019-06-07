#Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

#input: string
#output: string
#use .chars to turn string into an array of characters. Iterate through each character and if the character is a consonant, double it. Define a consonant as A-Za-z and not a, e, i, o, u or AEIOU.

def double_consonants(string)
  characters = string.chars
  result = ''
  characters.each do |char|
    if char =~/[^A-Za-z]/ 
      result << char
    elsif char != 'a' && char != 'e' && char != 'i' && char != 'o' && char != 'u'
      result << char + char 
    else 
      result << char 
    end 
  end
  result
end 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""