#The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

#Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

#You may not use ruby's Date and Time classes.

#input: integer representing how many minutes before or after midnight it is
#output: time of day in 24 hour format ex: 2:40pm would be 14:40
#Take the input and convert to hours and minutes format. Hour = input/60. Min = input.remainder(60)
  #if positive input: output is the hour: minute formula
  #if negative input: output is 24 - hour:min OR change input first: n = input/1440; input+(n*1440)
  #PROBLEM: if input is more than minutes in 1 day...need a way to loop back around. 
    #If input / 1440 < 1 normal
    #If n = input / 1440 > 1 need to subtract off n*1440 before convert to hour:minute
    
def time_of_day(min)
  if min<0
    min = min + (-(min/1440)*1440)
  end 
  num_days = min/1440 
  if num_days > 1
    min = min - num_days*1440
  end 
  hour = min/60
  minute = min.remainder(60)
  format('%02d', hour)
  p "#{hour}:#{minute}"
end 

time_of_day(55)
time_of_day(160)
time_of_day(-50)
time_of_day(3000)
time_of_day(-3000)


#EASIER WAY
#use min %1440 to get the new input argument no matter positive or negative or over 1 full day input
#Then get the hour by doing divmod using new input from above and 60. this gives an array where value 1 is the hour and value 2 is the minutes that should be displayed. 
#Use format(%02d:%02d, hour, minute) after setting hour, minute equal to the array above

def timeofday(input)
  input = input % 1440
  hour, min = input.divmod(60)
  format('%02d:%02d', hour, min)
end 

p timeofday(400)
p timeofday(-3000)
p timeofday(760)