#Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

#input: string representation of time in the format "hour:minute"
#output: an integer representative of time before and after midnight - starting with before
#Change string to an array of strings using .split(':'). Then change the array of strings to an array of integers using map method and .to_i. Multiply the first number by 60 and add the second. 

MIN_IN_DAY = 1440

def after_midnight(time)
  array = time.split(':').map{|n| n.to_i}
  minutes = array[0]*60 + array[1]
  minutes = 0 if time == "24:00"
  minutes
end 

def before_midnight(time)
  minutes = MIN_IN_DAY - after_midnight(time)
  minutes = 0 if time == '00:00' || time == "24:00"
  minutes
end 

puts 'after times'
p after_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p after_midnight('24:00') #== 0 

puts 'before times'
p before_midnight('00:00') #== 0 
p before_midnight('12:34') #== 686
p before_midnight('24:00') #== 0
