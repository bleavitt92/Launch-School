#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

#input: integer
#output: string of 1's and 0's that starts with 1 and is the length of the input
#Set i = 0 for a counter then, take a number, n. Loop through and print the number 1 if i is odd and 0 if i is even. Add 1 to i each loop. Break when i == n 

def stringystring(num) 
  i = 0
    string = ""
  loop do 
    if i % 2 == 0
      string << "1"
    else 
      string<< "0"
    end 
    i +=1
    break if i == num
  end 
  p string 
end 

stringystring(10)

#solution from launch 

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(4)