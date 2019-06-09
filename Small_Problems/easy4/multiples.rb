#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#You may assume that the number passed in is an integer greater than 1.

#input: integer, n
#output: integer - sum of integers
#create an array of numbers from 1 to n. A number is added to the array if the number is divisible by 3 or 5. 

def multisum(n)
  nums = []
  for i in 1..n do
    if ((i % 3 == 0) || (i % 5 == 0))
      nums << i
    end 
  end 
  puts nums.sum
end 

multisum(3)
multisum(5)
multisum(10)
multisum(1000)

#use enumerable.inject

def multisum2(n)
  multiples = (1..n).select {|n| (n % 3 == 0) || (n % 5 == 0)}
  multiples.inject(:+)
end 

p multisum2(10)

