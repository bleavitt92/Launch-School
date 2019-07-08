#Write a method that takes a string, and returns a new string in which every character is doubled.

# input: string
# output: new string w/ each char twice

def repeater(string)
  new_string = ''
  string.chars.map do |char|
    new_string << char + char
  end 
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''









#input: string
#output: string where every character is doubled. ex: abc == aabbcc
#take the string and .chars it so that it is split up by each character into an array. Take the array and iterate over each element adding each character to an output string twice. 

# def repeater(string)
#   characters = string.chars
#   output = ''
#   characters.each{|char| output << char+char}
#   output
# end 

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''