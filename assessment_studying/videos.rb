# return a string in reverse order

# input: string
# output: string in reverse order
# break string into an array of characters. loop through the array, setting counter to 0 and break when counter is array.size/2. Swap the items within the array based on the counter being the index.

def string_rev(string)
  array = string.chars 
  i = 0
  n = array.size
  loop do 
    array[i], array[n-1-i] = array[n-1-i], array[i]
    i += 1
    break if i == n/2
  end
  array.join('')
end

string_rev('hello')

# input: two integers - start and stop
# output; strings and integers
# divisible by both 3 and 5 ->  'FizzBuzz', just 3 'Fizz, just 5 'Buzz'

def fizzbuzz(num1, num2)
  array = (num1..num2).to_a
  fizzbuzz = array.map do |n|
    if n % 15 == 0
      'FizzBuzz'
    elsif n % 3 == 0
      'Fizz'
    elsif n % 5 == 0
      'Buzz'
    else
      n
    end 
  end
  fizzbuzz.join(', ')
end

fizzbuzz(1, 20)

# new exercise. 
# iterate through the array selecting all hashes whose price is between the given search criteria

PRODUCTS = [{name: "Thinkpad x210", price: 220}, 
            {name: "Thinkpad x220", price: 250}, 
            {name: "Thinkpad x250", price: 979}, 
            {name: "Dell Inspiron", price: 450}]

query = { price_min: 240, price_max: 280, q: "thinkpad"}
query2 = { price_min: 200, price_max: 500, q: "dell"}


def search(input)
  PRODUCTS.select do |hash|
   ( hash[:price] > input[:price_min] && hash[:price] < input[:price_max]) &&
   hash[:name].downcase.include?(input[:q])
  end 
end

search(query)
search(query2)

# remove vowels from an array of strings

# input: array of string
# output: string with vowels removed 

# regex for vowels [AEIOUaeiou] 
# iterate over the array and work with strings individually
# split the string up into an array
# iterate through the array using each 
# if the letter is a vowel, use .delete

def remove_vowels(string_arr)
  output = []
  output = string_arr.each do |string|
    string.chars.each do |letter|
      if letter.match(/[AEIOUaeiou]/)
        string.delete!(letter)
      end 
    end 
  end 
  output
end

remove_vowels(['green', 'yellow', 'blue'])

# balanced set of parenthesis in a string
# 

def balanced(string)
  
end

# input: string
# output: boolean 
# true if balanced parentheses. False otherwise. 
# regex
# or count '(' and match it with count ')'
# string split into an array of characters. set a counter == 0 iterate through the array 
# For each '(' add one to a counter, for each ')' subtract 1 from a counter.
# if the counter == 0, return true, else false

def balancer(string)
  counter = 0
  string.chars.each do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    return false if counter < 0
  end 
  return true if counter == 0
  false
end

balancer('(hello)') #true
balancer('((hello)') #false
balancer('()hello()') #false

balancer '(()) )(' #false

# input: two numbers
# output: all primes between the two numbers
# create a method is_prime?(num) to detect if a number is a prime number
# use the two input numbers to create an array, iterate over it using select method and select the numbers where is_prime evaluates to true. 
# prime numbers are divisible by 1 and themselves, but nothing else

def is_prime?(number)
  divisors = (2..number-1)
  divisors.select { |divisor| number % divisor == 0 }.empty?
end

def find_primes(num1, num2)
  (num1..num2).to_a.select do |num|
    is_prime?(num)
  end 
end

find_primes(1, 13)

# problem from blog post
computers = {
  dell1: { name: 'Dell A', price: 100 },
  hp1:   { name: 'HP B',   price: 200 },
  asus1: { name: 'Asus C', price: 300 },
} # Example of nested hashes

computers.select do |computer, hsh|
  # stuck: how can I access the price value within the nested hash?
  puts hsh[:name]
end