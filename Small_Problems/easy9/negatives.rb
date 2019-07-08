#Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# input: integer
# output: integer
# check if number > 0, if so do -1*num. else num

def negative(num)
  if num > 0
    num*-1 
  else 
    num
  end 
end 











#input: number
#output: number - negative
#take absolute value of number and then make negative

# def negative(num)
#   -1*num.abs
# end 

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  