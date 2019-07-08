#Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# input: array
# output: nested arrays [[arr1st half], arr2nd half]]
# use arr.size / 2 to determine how many in the 2nd half 
# subtract from arr.size for how many in the first half
# initialie an ouput array, first half array, second half array, iterate through the input array and add each element to the first half array until counter is equal to number of items for the first half array. 

def halvsies2(arr)
  first_arr = []
  second_arr =[]
  second_size = (arr.size) /2
  first_size = arr.size - second_size
  index = 0
  loop do 
    if index < first_size
      first_arr << arr[index]
    else 
      second_arr << arr[index]
    end 
    index += 1
    break if index == arr.size
  end 
  output = first_arr, second_arr
  output
end 

p halvsies2([1, 5, 6, 3, 2, 4, 8])










#input: array
#output: two arrays - nested - exactly cut in half - if odd, more in first array
#plan: find the length of the array using .size and cut that in half (round up if odd). This will be the number of terms that are left for the 1st array. Use .drop to get the 2nd half of array into another array. 

# def halvsies(array)
#   n = (array.size/2.0).round
#   array2 = []
#   array2 << array.drop(n)
#   array2 = array2.flatten!
#   array1 = []
#   array1 = array - array2 
#   halvsie_array = [array1, array2]
# end 

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# #using slice
# def halvsies2(array)
#   n = (array.size.to_f/2).round
#   array1 = array.slice(0, n)
#   array2 = array.slice(n, array.size-n)
#   p halvsie_array = [array1, array2]
# end

# halvsies2([1, 5, 6, 3, 2, 4, 8])