#Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future

#input: integer representing the year
#output: integer representing the number of friday the 13ths in that year
#find all fridays in a particular year. count how many are the 13ths. 
#initialize date with require 'date' then can use Date.new(year,month,day).wday=? 5 for friday
#mday can tell us if it is the 13th. 
#set up an array for the date in year, month, day format. year is given then it is 1-12 for month and 1-30 for days
#use array.join(',') to make usable for wday format. 

#loop through each day of the year use (year, month, day).friday?, if true, check for the day == 13. 

def friday_13th(year)
  require 'date'
  count = 0
  1.upto(12) do |month|
    thirteenth = Date.new(year, month, 13)
    if thirteenth.friday?
      count +=1
    end 
  end 
  count
end 

p friday_13th(2019)
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2