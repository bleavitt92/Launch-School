#The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

#Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

#sum is a recursive method that computes the sum of all integers between 1 and n.

#Recursive methods have three primary qualities:

#They call themselves at least once.
#They have a condition that stops the recursion (n == 1 above).
#They use the result returned by themselves.
#In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

#Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(1) == 1
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765


#input: integer - n for nth number in fibonacci series
#output: integer - nth number in fibonacci series
#recursive. fibonacci goes: 1, 1, 2, 3, 5, 8, 13, etc.  will need to explicityly define the 1st and 2nd terms as 1. The nth term = fibbonaci(n-1) + fibonnaci(n-2)

# def fibonacci(n)
#   if n == 1
#     1
#   elsif n == 2
#     1
#   else 
#     fibonacci(n-1) + fibonacci(n-2)
#   end 
# end 

# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
# p fibonacci(4)
# p fibonacci(5)
# p fibonacci(6)
# p fibonacci(7)
# p fibonacci(20)