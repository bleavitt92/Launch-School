#Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
#New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

#input: year - ex 2019 or 1901 or 1845 - as an integer
#output: string with the century number. String will be made up of a number and then it's suffix. 
  #1801-1900 = 19th century 
  #1901-2000 = 20th century
  #2001-2100 = 21st century
  #suffix rules: 
  #1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, 11th, 12th, 13th, 14th, 15th, 16th, 17th, 18th, 19th, 20th
  #21st, 22nd, 23rd, 24th...30th, 31st, 32nd, 33rd, 34th..40th, etc
  #general rule: 1 -> st; 2->nd; 3->rd; 4..10->th; exceptions 11, 12, 13 -> th

def century?(year)
  year = (year.to_f / 100).ceil
  last_two = (year % 100)
  last_num = year % 10
  suffix = {
  1=>'st', 
  2=>'nd', 
  3=>'rd', 
  4=>'th',
  5 => 'th',
  6 => 'th',
  7 => 'th',
  8 => 'th',
  9 => 'th',
  0 => 'th'
  }
  
  if (last_two != 11 && last_two != 12 && last_two != 13)
    suffix = suffix[last_num]
    puts "#{year}#{suffix}"
  else 
    suffix = 'th'
    puts "#{year}#{suffix}"
  end 
end 

century?(2000) 
century?(2001) 
century?(1965) 
century?(256) 
century?(5) 
century?(10103)
century?(1052) 
century?(1127) 
century?(11201) 