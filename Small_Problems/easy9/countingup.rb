#Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

#You may assume that the argument will always be a valid integer that is greater than 0.

# input: integer
# output: array of integers from 1 to the given input

def countup(num)
  (1..num).to_a
end

p countup(10)










#input: integer
#output: array of integers from 1 to the input
#use (1..input).to_a

# def sequence(integer)
#   (1..integer).to_a
# end 

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]