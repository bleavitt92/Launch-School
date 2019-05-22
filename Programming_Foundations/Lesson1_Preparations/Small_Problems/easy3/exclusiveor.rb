#In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

#input: two arguments
#output: true if one is true and one is false
#say a is true and b is false.  - need true return
  #a && b returns false. a || b returns true
#say a is true and b is true    - need false return
  # #a && b returns true. a || b returns true
  #SO if a && b returns true -> xor is false
  #AND if a || b returns false -> xor is false

def xor(a, b)
  if ((a && b == true) || ((a == false) && (b == false)))
    false
  else 
    true
  end 
end 

puts xor(5.even?, 4.even?)  # False True == true
puts xor(5.odd?, 4.odd?)    #True False ==true
puts xor(5.even?, 4.odd?)   #False False == false
puts xor(5.odd?, 4.even?)   #True True == false


#Shorter way
def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end