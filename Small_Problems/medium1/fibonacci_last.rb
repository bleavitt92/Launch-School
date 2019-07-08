#In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

#In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.


def fibonacci(num)
  fib_arr = [1, 1]
  1.upto(num-2) do |n|
    next_num = fib_arr[n-1] + fib_arr[n]
    fib_arr << next_num
  end 
  fib_arr[-1]
end

def fibonacci_last(n)
  number = fibonacci(n)
  number.digits[0]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4












# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   p last % 10
# end

# def fibonacci_lastdigit(nth)
#   fibonacci(nth).to_s[-1].to_i
# end 


#fast series from another person
# FIB_LAST_DIGITS = [
#   0, 1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7,
#   7, 4, 1, 5, 6, 1, 7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 8,
#   7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 9, 5,
#   4, 9, 3, 2, 5, 7, 2, 9, 1
#   ]

# def fibonacci_last(n)
#   FIB_LAST_DIGITS[n % 60]
# end

# p fibonacci_last(123456789) # -> 4
