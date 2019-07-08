# find all prime numbers up to a given

# input: number
# output: array of primes numbers
# need to find if a number is prime first
# -- define a method is_prime? that takes an integer. 
# -- test if it is prime by iterating through a range from 2 up to n-1
# -- if the input number is divisible by any of the numbers in that range, not prime

# iterate through each number from 2 up to n, returning the number if is_prime is true

def is_prime?(n)
  (2..n-1).each do |num|
    if n % num == 0
      return false
    end
  end
  true
end

def primes(n)
  output = []
  (2..n).each do |num|
    if is_prime?(num)
      output << num
    end
  end
  output
end

p primes(13)