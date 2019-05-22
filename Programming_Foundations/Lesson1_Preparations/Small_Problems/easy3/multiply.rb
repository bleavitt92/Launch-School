#Create a method that takes two arguments, multiplies them together, and returns the result.

#focus on return value. Puts returns nil so no puts used here. 

def multiply(x, y)
  product = x*y
end 

multiply(3, 4)

def square(num)
  multiply(num, num)
end 

def cube(n)
  multiply(multiply(n, n), n)
end 

puts cube(3)