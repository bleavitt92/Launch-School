#Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# input: string
# output: string - middle character of input
# -- if even - return both
# change string to an array of characters
# if array length is odd, return the character at index of array.length/2 + 1
# if array length is even, return the characters at index of array.length/2 and + 1

def center_of(string)
  array = string.chars
  if array.size.odd?
    array[array.length/2]
  else
    array[(array.length/2 -1)..array.length/2].join
  end 
end








#input:string
#ouput: 1 or 2 characters from middle of string. If odd - 1 char; If even - 2 chars. 
#Need to know string length so can figure out which number character or characters to return. If odd (use.odd?) you will return the n/2+1 character. If even? return the n/2 and n/2+1 characters. 

# def center_of(string)
#   n = string.length
#   if n.odd? 
#     string[(n/2)]
#   else 
#     string[(n/2)-1] + string[(n/2)]
#   end 
# end 

p center_of('hey')
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'