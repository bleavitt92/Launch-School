#If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

#Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

#Note that you do not have to handle multiple 0s.

# input: integer
# ouput: integer rotated
# need a loop. set counter = 0
# use rotate rightmost digits function and change n as you go

def rotate(num)
  array = num.to_s.chars
  new_arr = array[1..-1], array[0]
  new_arr.join.to_i
end

def rotate_rightmost_digits(num, n)
  split_num = num.divmod(10 ** n)
  rotated_num = rotate(split_num[1]).to_s
  (split_num[0].to_s + rotated_num).to_i
end

def max_rotation(num)
  how_many_rotate = num.to_s.chars.size
  loop do
    num = rotate_rightmost_digits(num, how_many_rotate)
    how_many_rotate -= 1
    break if how_many_rotate == 0
  end 
  num
end


p max_rotation(12345)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(8703529146)




#input: integer
#output: max rotation integer
#use rotate_rightmost_digits to rotate the number with n = length of number(to_s.length). Then do again with n-1, n-2, etc. until at the end. 

# def rotate_rightmost_digits(num, n)
#   split = num.divmod(10**n)
#   rotation = split[1].to_s.chars
#   (split[0].to_s.chars + rotation[1..-1] + [rotation[0]]).join.to_i
# end 

# def max_rotation(number)
#   num_rotate = (number.to_s.size)
#   while num_rotate > 1
#     number = rotate_rightmost_digits(number, num_rotate)
#     num_rotate -=1
#   end 
#   number
# end 
