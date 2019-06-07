#Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

#input: string
#output: integer
#change the integer to an array using split or chars. iterate over the array to get the value for each character and add that value to sum. Define sum as 0 before the iteration. 

def ascii_value(string)
  sum = 0
  string.chars.each{|s| sum += s.ord}
  sum
end 

p ascii_value('a')
p ascii_value('Four score')