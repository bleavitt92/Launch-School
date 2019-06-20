# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# input: integer
# output: string of stars and spaces - nxn
# - - lines 1 -> n/2 and n/2 -> n are 3 stars each spaced out differently
# - - - lines 1 and n: * n/2-1 spaces * n/2-1 spaces *
# - - - each line adds a space at beginning and end while taking off a space from the inner points
# - - line n/2 + 1 is n stars

# algorithm: 
# - loop for top half set counter = 0 that breaks when counter == n/2
# - - set counters outer_space = 0 and inner_space = n/2 
# - - print ' '*outer_space + '*'' + ' '*inner_space + '*'' + ' '*inner_space + '*' + ' '*outer_space
# - - add 1 to outer_space, subtract 1 from inner_space

def star(n)
  counter = 0
  outer_space = 0
  inner_space = n/2
  loop do # top half
    puts ' '*outer_space + '*' + ' '*inner_space + '*' + ' '*inner_space + '*' + ' '*outer_space
    counter +=1
    outer_space +=1
    inner_space -=1
    break if counter == n/2 +1
  end 
  
  puts ' '+"*"*n
  
  counter = 0
  outer_space = n/2
  inner_space = 0
  loop do # bottom half
    puts ' '*outer_space + '*' + ' '*inner_space + '*' + ' '*inner_space + '*' + ' '*outer_space
    counter +=1
    outer_space -=1
    inner_space +=1
    break if counter == n/2 +1
  end
end 

star(7)