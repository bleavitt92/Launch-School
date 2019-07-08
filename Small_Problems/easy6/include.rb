#Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# input: array, search value(integers or nil)
# output: boolean T/F
# find if the specific value is in the array
# iterate through the array,

def include?(array, value)
  array.each do |val|
    if val == value
      return true
    end 
  end 
  false
end 












#input: array, search value
#output: Boolean. True if search value is in array, false if not. 
#no use of #include?
#take the array and iterate through each value. For each one, if n == search value, puts true. How to know done with array and to put false?

#issue getting it to say false 
# def include__?(array, value)
#   array.each do |n|
#     if n == value
#       true
#     end 
#   end 
# end 

# #issue with nil
# def include_?(array, value)
#   search = array.bsearch {|n| n == value}
#   search != nil ? true : false
# end 

# #correct way
# def include?(array, value)
#   array.each {|n| return true if n == value}
#   false
# end 

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false