#Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# input: integer, n
# output: string made up of spaces and *'s
# n/2 spaces then * then n/2 spaces

def middle_row(n)
  puts '*' * n
end

def top_half(n)
  num_stars = 1
  num_spaces = n/2
  loop do 
    puts ' '*num_spaces + '*' * num_stars
    num_stars += 2
    num_spaces -= 1
    break if num_spaces == 0
  end
end

def bottom_half(n)
  num_stars = n-2
  num_spaces = 1
  loop do 
    puts ' '*num_spaces + '*' * num_stars
    num_stars -=2
    num_spaces += 1
    break if num_spaces == n/2 + 1
  end
end

def diamond(n)
  top_half(n)
  middle_row(n)
  bottom_half(n)
end

diamond(7)










#input: odd integer
#output: string of * creating a diamond
#loop through n times for n lines 
#for middle line n.times{print '*'}
#start at top line. n/2 = spaces. puts ' '*spaces then add in the * with *num_stars then again with spaces
#subtract 1 from spaces and add 2 to num stars

# def diamond_top_half(n)
#   spaces = n/2
#   stars = 1
#   (n/2).times do 
#     puts ' '*spaces + '*'*stars + ' '*spaces 
#     spaces-=1
#     stars+=2
#   end 
# end 

# def diamond_bottom_half(n)
#   spaces = 1
#   stars = n-2
#   (n/2).times do 
#     puts ' '*spaces + '*'*stars + ' '*spaces 
#     spaces+=1
#     stars-=2
#   end 
# end 

# def diamond_middle_row(n)
#   puts '*'*n 
# end 

# def diamond(n)
#   diamond_top_half(n)
#   diamond_middle_row(n)
#   diamond_bottom_half(n)
# end 

# diamond(5)