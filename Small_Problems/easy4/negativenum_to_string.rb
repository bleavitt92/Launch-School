def integer_to_string(num) 
  convert = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] 
  string = ''
  num.digits.reverse.map{|n| string << convert[n]}
  string
end 

#add in the option to use negative numbers

def signed_integer_to_num(num)
  if num < 0
    num = -1*num 
    '-'+integer_to_string(num)
  else 
    integer_to_string(num)
  end 
end 

p signed_integer_to_num(1342)
p signed_integer_to_num(0)
p signed_integer_to_num(-23)
  