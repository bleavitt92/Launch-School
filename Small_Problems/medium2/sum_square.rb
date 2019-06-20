# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# ex: sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

# input: integer, n
# output: integer
# algorithm
# - use n.times to loop through adding n to the sum


def sum_square_difference(n)
  
  sum = 0 
  for i in 0..n
    sum += i
  end
  
  sq_sum = 0
  for i in 0..n
    sq_sum += (i**2)
  end 
  
  (sum*sum) - sq_sum
end 

p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150