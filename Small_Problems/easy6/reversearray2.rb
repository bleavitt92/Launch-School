#Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

#You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

#input array
#output - new array
#add each element 1 by 1 from the end of original array to the new array

def reverse(array)
  rev_array = []
  i = 0
  while i < array.size 
    rev_array.unshift(array[i])
    i +=1
  end 
  rev_array
end 

a = [1, 2, 3, 4, 5]
p rev1 = reverse(a)
p a.object_id != rev1.object_id
