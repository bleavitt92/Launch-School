#Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

#input: array of positive numbers
#output: single integer - average of all numbers
#create a method that takes an array, called array, sums it up, then divides by the number of elements in that array. 

def average(array)
  array.sum / array.length
end 

puts average([1, 2, 3, 4])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#adding a (0.0) after .sum will make the value a float instead of integer