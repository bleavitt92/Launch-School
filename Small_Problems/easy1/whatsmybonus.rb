#Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

#input: salary as an integer, true or false (boolean)
#output: integer - how much bonus will be. If false == 0, If true == salary/2
#Write a method with 2 inputs, salary, and boolean. If boolean is true, print salary/2, if boolean false, print 0

def calculate_bonus(salary, boolean)
  if boolean == true
    salary/2
  else 
    0
  end 
end 

#shorter way: 
# boolean? (salary/2) : 0 instead of if else statement

puts calculate_bonus(2800, true)
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000