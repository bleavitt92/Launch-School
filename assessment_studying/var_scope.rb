# b is not initialized in the outer scope so it is not available in line 15 to call the method puts upon. 

# a = 'hi'
# puts "a object id is: #{a.object_id}"

# loop do 
#   a = 'hello'
#   puts "a object id is: #{a.object_id}"
#   b = 'yo'
#   break 
# end 

# puts a 
# puts "a object id is: #{a.object_id}"
# puts b 

# # example 2

# a = 'hi'
# puts "a object id is: #{a.object_id}"

# loop do 
#   a << ' hello' # mutating method, so same object
#   break 
# end 

# puts a 
# puts "a object id is: #{a.object_id}"

# example 3

# a = 'hi'
# puts "a object id is: #{a.object_id}"

# loop do 
#   a += ' hello' # non-mutating method, so diff object. This is reassignment a = a+ 'hello' of a new object to the variable a 
#   break 
# end 

# puts a 
# puts "a object id is: #{a.object_id}"