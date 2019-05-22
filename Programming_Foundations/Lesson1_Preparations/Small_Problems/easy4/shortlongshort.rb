#Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.
#short_long_short('abc', 'defgh') == "abcdefghabc"
#short_long_short('abcde', 'fgh') == "fghabcdefgh"
#short_long_short('', 'xyz') == "xyz"

#input: two strings.
#output: one string
#first determine which string is the shortest. Put it first. Then the longer. Then the shorter again. 

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1 + string2 + string1
  else 
    string2 + string1+ string2
  end 
end 

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')