#Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

#input an array of numbers ex [0, 1, 2, 3, 4, 5]
#output another array of numbers. This time deleting every other number starting with index 1, 3, 5, etc. 
#loop one - delete index 1 then [0, 2, 3, 4, 5] - need to delete index 2 
#after loop two - [0, 1, 4, 5] - need to delete index 3

def oddities(array)
  initialcount = array.count
  n = (initialcount/2)
  i = 1
  n.times do 
    array.delete_at(i)
    i +=1
  end 
  p array
end 

oddities([5, 6, 7, 8, 9, 10])
oddities([1, 2, 3])

oddities([2, 3, 4, 5, 6])
oddities([1, 2, 3, 4, 5, 6])
oddities(['abc', 'def'])
oddities([123])
oddities([])

#Would have been much easier to create a new array for the output and add elements to it instead of modifying original array!
#same problem but for even elements
#make empty array called even. Add elements of array to even using index values: 0, 2, 4, etc. Break when counter is greater than the array count. 

def evenlists(array)
  even = []
  j = 0
  while array.count >= j 
    even << array[j]
    j +=2
  end 
  p even
end 

evenlists([0, 1, 2, 3, 4, 5])