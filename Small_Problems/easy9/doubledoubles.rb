#A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

#Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# input: integer
# output: integer
# check if a double number
# -- change the integer to a string then to a character array
# -- if the character array size is even, take the first half and see if equal to second half

def twice(num)
  array = num.to_s.chars
  if array.size.even?
    first_half = array[0..array.size/2-1]
    second_half = array[array.size/2..-1]
     if first_half == second_half
      return num
    else
      return num *2
    end 
  else 
    return num *2
  end
end








#input: number
#output: number times 2 unless the number is a double number
#first check if double number. If so, return the number. Else, return 2*number. 
  #check by: first check if it has an even number of digits? if it isn't next. If it is, find the length of the number by changing it to a string and using .lenth. check if string[0, n/2] == string[n/2, n]. if so return that number. 


# def twice(num)
#   n = num.to_s.length
#   if n.even? && (num.to_s[0, n/2] == num.to_s[n/2, n])
#     num
#   else 
#     num*2
#   end 
# end 

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10