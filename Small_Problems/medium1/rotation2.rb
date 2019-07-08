#Write a method that can rotate the last n digits of a number. For example:

# input:array and integer

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

p rotate_rightmost_digits(12345, 3)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917









#input: integer
#output: integer with the last n digits rotated. 
#number.divmod(10**n) returns an array where the first number is what stays and the 2nd part is what needs to be rotated. 

# def rotate_rightmost_digits(number, n)
#   split = number.divmod(10**n)
#   rotation = split[1].to_s.chars
#   (split[0].to_s.chars + rotation[1..-1] + [rotation[0]]).join.to_i
# end 
