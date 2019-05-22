#The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

#Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year2?(year)
  if year < 1752
    if year % 4 == 0
      true
    else 
      false
    end 
  elsif year % 400 == 0
    true
  elsif ((year % 4 == 0) && (year % 100 != 0)) 
    true
  else 
    false
  end
end 

p leap_year2?(2016)
p leap_year2?(2015) 
p leap_year2?(2100)
p leap_year2?(2400)
p leap_year2?(240000)
p leap_year2?(240001)
p leap_year2?(2000) 
p leap_year2?(1900) 
p leap_year2?(1752) 
p leap_year2?(1700) 
p leap_year2?(1) 
p leap_year2?(100) 
p leap_year2?(400) 