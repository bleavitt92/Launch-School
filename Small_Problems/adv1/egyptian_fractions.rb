# input: rational number x/y written as Rational(x, y)
# output: array of numbers for the denominators of the egyptian number representaiton of Rational (x, y)
# working backwards for unegyptian method: if we iterated through the output array and did 1/n and summed it all up, it would equal the input number 
  # output.each { |n| sum += Rational(1, n) }
  
# working forwards for egyptian method taking a number as input
  # loop n = 1
  # break if number == 0
  # start by subtracting 1/n
    # if less than 1, add 1/n back to number
  # add 1 to n and repeat

def unegyptian(egyptian_num_array)
  sum = 0
  egyptian_num_array.each { |n| sum += Rational(1, n) }
  sum 
end

def egyptian(rational_num)
  output = []
  n = 1
  loop do
    break if rational_num == 0
    rational_num -= Rational(1, n)
    if rational_num < 0
      rational_num += Rational(1, n)
    else
      output << n
    end 
    n += 1
  end 
  output
end 

p egyptian(Rational(2, 1)) 
p egyptian(Rational(137, 60))
p egyptian(Rational(3, 1))

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
