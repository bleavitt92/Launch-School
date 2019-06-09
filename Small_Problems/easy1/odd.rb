#Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd?(n)
  n.abs % 2 !=0
end 

puts is_odd?(4)
puts is_odd?(3)
puts is_odd?(-4)
puts is_odd?(-9)
puts is_odd?(0)