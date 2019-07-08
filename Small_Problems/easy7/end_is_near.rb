#Write a method that returns the next to last word in the String passed to it as an argument.

#Words are any sequence of non-blank characters.

#You may assume that the input String will always contain at least two words.

# input: string
# output: string (single word - next to last one)
# split the input string into an array of words using .split(' ')
# array[-2] should find the 2nd to last word

def penultimate(string)
  string.split(' ')[-2]
end 

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'





#input: string
#output: string - single word 
#separate string using .split(' ').  pop off last word then return array.last

# def penultimate(string)
#   a = string.split(' ')
#   a.pop                   #here could have referenced index. a[-2]
#   a.last    
# end 

