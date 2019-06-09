#In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

#Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

#input: year
#output: true or false. 
  #If the year is divisible by 4 - true
  #exceptions: if also divisible by 100 - false
  #if divisible by 400 - true

def leap_year?(year)
  if year % 400 == 0
    true
  elsif ((year % 4 == 0) && (year % 100 != 0)) 
    true
  else 
    false
  end
end 

leap_year?(2016)
leap_year?(2015) 
leap_year?(2100)
leap_year?(2400)
leap_year?(240000)
leap_year?(240001)
leap_year?(2000) 
leap_year?(1900) 
leap_year?(1752) 
leap_year?(1700) 
leap_year?(1) 
leap_year?(100) 
leap_year?(400) 