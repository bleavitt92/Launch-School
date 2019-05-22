#Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

#start with a counter i = 1. add 2 to i each loop. Stop when i > 99. 

i = 1 
loop do
  puts i 
  i += 2
  break if i > 99
end 

#another way 
1.upto(99) {|i| puts i if i.odd?}
