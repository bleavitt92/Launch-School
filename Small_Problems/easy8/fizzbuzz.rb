#Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# input: 2 integers - start and end
# output: string of integers and words
# if divisible by 
# -- 3 & 5 'FizzBuzz'
# -- 5 "Buzz"
# -- 3 "Fizz"

def fizzbuzz(num1, num2)
  array = (num1..num2).to_a
  fizzbuzz = array.map do |n|
    if n % 3 == 0 && n % 5 == 0
      'FizzBuzz'
    elsif n % 5 == 0
      'Buzz'
    elsif n % 3 == 0
      'Fizz'
    else 
      n
    end
  end
  fizzbuzz.join(' ')
end

p fizzbuzz(1, 15)





#input: starting number and ending number - so, 2 numbers
#output: all numbers in between unless divisible by 3. "Fizz" if divisible by 3. "Buzz" if divisible by 5. "FizzBuzz" if divisible by both 3 and 5
#Need to set up a loop going through each number. inputs are n, m. n.upto(m) do... if num divisible by 15 p "FizzBuzz" then next, elsif num divisible by 3, p "Fizz" then next, elsif num divisible by 5, p "FizzBuzz" then next, else puts num. 

# def fizzbuzz(n, m)
#   result = []
#   n.upto(m) do |num|
#     if num % 15 == 0
#       result << "FizzBuzz"
#     elsif num % 3 == 0
#       result << "Fizz"
#     elsif num % 5 == 0
#       result << "Buzz"
#     else 
#     result << num 
#     end 
#   end
#   result.join (' ')
# end 

# p fizzbuzz(1, 15)