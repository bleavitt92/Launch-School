#Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

#input: string of letters, numbers, etc. 
#output: get rid of everything but the letters. Replace with spaces. 
# use ^a-z. take the string, replace all ^a-z with ' '. Then replace any '  ' with ' ' (double spaces with single)

def cleanup(string)
  string.gsub!(/[^a-zA-Z]/, ' ').squeeze(' ')
end 

p cleanup("---What'****s my +*& line?")