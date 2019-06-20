# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.
# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# input: array
# output: array sorted
# algorithm 
# - define method bubblesort! that takes an array as an argument
# - loop through the array comparing each item and the next item 
# - use the <=> operator
# - - if == 1, swap the two using arr[1] = arr[0]

def bubble_sort!(array)
  round = 1
  loop do 
    
  i = 0
    loop do
      if (array[i] <=> array[i + 1]) == 1
        array[i], array[i + 1] = array[i + 1], array[i]
      end 
      i += 1
      break if i == array.size - 1
    end 
    
    round += 1 
    break if round == array.size
  end 
  array
end 

p bubble_sort!([6, 2, 3, 1, 4, 4, 3])