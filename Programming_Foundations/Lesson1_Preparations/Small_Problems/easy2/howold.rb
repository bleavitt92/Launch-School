#Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

#input: random number generator
#output: integer from that random number generator function between 20 and 200
#defind method howold?() and define a variable age that is equal to the random number generator. Print Teddy is #{age} years old. 

def howold?
  age = rand(20..200)
  puts "Teddy is #{age} years old"
end 

howold?