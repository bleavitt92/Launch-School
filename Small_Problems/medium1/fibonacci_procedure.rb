#Rewrite your recursive fibonacci method so that it computes its results without recursion.

#input: integer representing nth fibonacci term
#output: integer
#loop through from 1.upto(n). For the first loop add 1, 2nd, 1 again, add these to the sum each loop through. 
#if n = 5: 1 + 1 + 2 + 3 + 5
#n = 5 => 1 + 1 + (1+1 = 2) + (1 + 2 = 3) + (2 + 3 = 5) = 12
#create an array that you add to by using array index

def fibonacci(n)
  array = []
  1.upto(n) do |num|
    if num <= 2 
      array << 1
    else
      array << array[num-3] + array[num-2]
    end 
  end 
  array.last
end 

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075

#another way
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end