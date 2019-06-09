#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(n)
  n.to_s.split(//).join(",")
end 

puts digit_list(123)

#or 

def digitlist(n)
  n.to_s.chars.map{|n| n.to_i}
end 

puts digit_list(124)
  