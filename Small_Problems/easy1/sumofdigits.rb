#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

#input: single integer 
#output: sum of digits - single integer
#Write a method that takes a number, changes it to a string, splits it into digits into an array, then sums it up
#launch schools' method: takes an integer, turns it into a string, then separates the string into individual characters within an array, then maps each character to an integer, then uses enummerable#reduce to add up the numbers

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

#or 

def sums(n)
  nums = []
  array = n.to_s.split('')
  array.each do |n|
    nums << n.to_i
  end 
  p nums.sum 
end 

sum(123)
sum(9734)
sum(1)
sum(0)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
    