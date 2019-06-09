#Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

#input: an array
#output: an array of sums from the first array
#iterate over the array for each number take it and add up all the numbers that come before it. array.sum
#or on a loop, sum up the entire array, then use array.pop to get rid of last number, then use sum again, and repeat. Keep going until array.count = 0. Reverse the array.

def running_total(array)
  sums = []
  while array.count > 0 do 
    sums << array.sum 
    array.pop
  end
  sums = sums.reverse!
  p sums
end 

running_total([1, 2, 3])
running_total([2, 5, 13])
running_total([3])
running_total([14, 11, 7, 15, 20])
running_total([])

#Way easier way

def runningtotal(array)
  sum = 0
  array.map {|n| sum += n}
end 

p runningtotal([1, 2, 3])
