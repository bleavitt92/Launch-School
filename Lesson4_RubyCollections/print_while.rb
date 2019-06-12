# -Using a while loop, print 5 random numbers between 0 and 99. The code below 
#  shows an example of how to begin solving this exercise.

numbers = []
count = 0

while count < 5
  puts rand(0..99)
  count += 1
end

# or 

numbers = []

while numbers.size < 5
  numbers << rand(100)
end 