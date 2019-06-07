#Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

#input: integer
#output: integer reversed from original - if equals original, true, else false
#take integer, turn into a string, reverse it, name that reverse, turn back into an integer. If integer == reverse true. else false. 

def palindromicnum?(integer)
  integer == integer.to_s.reverse.to_i
end 

puts palindromicnum?(12321) == true
puts palindromicnum?(1234541) == false
puts palindromicnum?(55) == true
puts palindromicnum?(3) == true