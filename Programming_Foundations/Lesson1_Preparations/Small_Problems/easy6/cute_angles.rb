#Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

#input: floating point number for degrees
#output: string of numbers and symbols
#1 degree = 60 minutes .      1 minute = 60 seconds .    ex: 76.73 -> 76 degrees, 43 min, 48 sec
#get the numbers: 
  #first degrees = number before the decimal, rounded down (use to_i). 
  #second minutes = multiply the decimal by 60. round down (use to_i)
  #multiply that decimal left over from minutes by 60. 

DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i
  minutes = float.remainder(1)*60
  seconds = minutes.remainder(1)*60
  puts %/#{degrees}#{DEGREE} %02d' %02d"/ % [minutes, seconds]
end 

dms(254.6)
dms(0)
dms(93.034773)