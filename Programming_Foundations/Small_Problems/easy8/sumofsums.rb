#Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

#input: array of numbers
#output: integer of the sum of numbers
#need to know how many numbers there are in the array. Use array.count. Then start with adding up all numbers. use array.pop to get rid of the last number. Then do again. subtract 1 from array.count each time and break when the count = 0.

def sum_of_sums(array)
  n = array.count
  sum_arr = []
  while n>0 do 
    sum_arr << array.sum
    array.pop
    n -=1
  end 
  sum_arr.sum
end 

p sum_of_sums([1, 3, 4])
p sum_of_sums([1, 2, 3, 4, 5]) == 35
p sum_of_sums([4])