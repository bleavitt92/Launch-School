# calculate if a number is prime
# input: number
# output: boolean
# determining if an integer is a prime

def is_prime?(n)
  return false if n == 1
  (2..n-1).each do |divisor|
    return false if n % divisor == 0
  end
  true
end

# write a method that will take an array of numbers, and only return those that are prime

def select_primes(array)
  array.select { |num| is_prime?(num) }
end

select_primes([1, 2, 3, 4])
select_primes([4, 6, 8, 10])

# write a method that will take an array of numbers, and return the number of primes in the array

def count_primes(array)
  select_primes(array).count
end
# or can do it with a loop

# def count_primes(array)
#   counter = 0
#   array.each {|num| counter += 1 if is_prime?(num) }
#   counter
# end

count_primes([1, 2, 3, 4])
count_primes([4, 6, 8, 10])

# next set

# ask for integer greater than 0. Ask for sum or product of all numbers between 1 and integer given

def prompt(msg)
  puts("=> #{msg}")
end


def calculate
  prompt("Please enter an integer greater than 0: ")
  num = gets.chomp.to_i
  prompt("Enter 's' to compute the sum, 'p' to compute the product: ")
  operation = gets.chomp

  if operation == 's'
    (1..num).inject(:+)
  elsif operation == 'p'
    (1..num).inject(:*)
  end
end

# combine two arrays in alternation
# initialize an output array
# loop through the first array and add first element to output array, then go to second array adding first element to it. Add one to index, repeat until index == array.size-1

def interleave(arr1, arr2)
  index = 0
  output = []
  loop do |num|
    output << arr1[index] 
    output << arr2[index]
    index += 1
    break if index == arr1.size
  end
  output
end

p interleave([1, 2, 3], ['a', 'b', 'c'])