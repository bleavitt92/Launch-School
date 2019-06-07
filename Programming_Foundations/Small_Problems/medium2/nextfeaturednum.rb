#A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

#Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

#input: single integer
#output: next featured number greater than input. error if not possible
#conditions: the number is greater than the input; number divisible by 7; numbers digits don't repeat themselves. Loop until meet these conditions

def featured(number)
  20.times do
    number +=1
    characters = number.to_s.split('')
    p characters.uniq == characters
    if (number.odd?) && (characters.uniq == characters) && (number % 7 == 0) 
      break
    end 
  end 
  number
end 

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987