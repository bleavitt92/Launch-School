#Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

#input: array of integers
#output: integer = multiply all, divide by number in array, round to 3 decimal places
#set product = 1, .each over array product = product * n. divide by array.size

def multiplicative_avg(array)
  product = 1
  array.each{|n| product = product*n}
  '%.3f'% (product.to_f / array.size)
end 

p multiplicative_avg([3, 5])
p multiplicative_avg([6])
p multiplicative_avg([2, 5, 7, 11, 13, 17])