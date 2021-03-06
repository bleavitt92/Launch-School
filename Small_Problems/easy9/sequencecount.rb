#Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

#You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# input: two integers - count, then first num
# output: array starting at first num and multiplying 

def sequence(count, num)
  output = []
  counter = 1
  loop do 
    break if counter > count 
    output << num * counter
    counter += 1
  end 
  output
end









#input:two integers - n and m
#output: array containing n integers, starting with m and being multiples of m
#use n.times to loop through and add to an array. each time have a multiplier that starts at 1 and +=1 each time through the loop. 

# def sequence(n, num)
#   output = [] 
#   multiplier = 1
#   n.times do
#     output << num * multiplier
#     multiplier +=1
#   end 
#   output
# end 

# p sequence(4, 2)
# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []