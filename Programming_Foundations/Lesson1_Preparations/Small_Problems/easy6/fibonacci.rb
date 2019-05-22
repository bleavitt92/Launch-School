#Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

#input (n): integer specifying the number of digits we are looking for in the fibonacci series
#output: integer - index of the fibonacci number found 
#Fibonacci numbers need to be in an array so we can reference them by index. Create a loop that that will create this array of numbers and break when the condition is met
  #condition to break: the number that is added to the array divided by 10**n to figure out place value

def find_fibonacci_index_by_length(n)
  fibonacci_arr = [1, 1]
  i = 0
  loop do 
    fibonacci_arr << fibonacci_arr[i] + fibonacci_arr[i+1]
    i +=1
    if fibonacci_arr[i+1].digits.length == n
      break 
    end 
  end
  p fibonacci_arr
  p fibonacci_arr.index(fibonacci_arr[i+1])+1
end 

find_fibonacci_index_by_length(2)

#OR

def fib_index(num_digits)
  first = 1
  second = 1
  index = 2
  
  loop do 
    next_num = first+second
    index +=1
    if next_num.digits.length >= num_digits
      break
    end 
    first = second
    second = next_num
  end 
  index
end 
  
p fib_index(2)
