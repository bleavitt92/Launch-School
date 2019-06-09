#You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

#Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

#Example with n = 5 lights:

#round 1: every light is turned on
#round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
#The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

#With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

#input: integer, n, for number of switches
#output: array - which numbered light switches are on
#all lights off -- if the switch gets touched an odd number of times it is on, even number of times it is off.
  #first pass - each multiple of 1 gets switched 
  #second pass - each multiple of 2 gets switched
  # create an empty hash and on the first run, add each numbered light switch 1..n as keys and then a '1' as a value. Each time the loop goes through, add '1' to the value
    #at the end, the values being odd or even determine which keys go into the final array

def multiples(x, n)
  multiples_array = []
  m = 1
  loop do
    multiples_array << x*m
    m +=1 
   if x*m >= n
     break
   end 
  end 
  multiples_array
end 

def lightswitch(n)
  hash = {} 
  1.upto(n) do |n|
    hash[n]=1         #creates the hash with every light switch now on
  end 
  run = 2
  while run <= n do   #create multiples method and iterate over each multiple
    multiples_array = multiples(run, n)
    multiples_array.each do |num|
      hash[num] +=1               #adding 1 to the specified key value pairs
    end 
    run +=1
  end             #odd value in hash means on
  on_lights = []
  hash.each do |k, v|
    if v.odd? 
      on_lights << k
    end 
  end 
  on_lights
end 

p lightswitch(5)
p lightswitch(10)
p lightswitch(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
