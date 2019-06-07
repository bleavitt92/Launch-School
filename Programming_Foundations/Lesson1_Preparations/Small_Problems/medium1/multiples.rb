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

p multiples(3, 20)