#Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# input: string
# output: hash {lowercase => percentage, uppercase => percentage, neither => percentage }
# initiate an output hash with the 3 keys and percentages at 0
# initiate counts for lower, uppercase, and neither
# calculate the percentages of each type within the string by: 
# # iterate over string.chars. If lowercase, add one to lowercase count, etc.
# after iteration calculate percentages by dividing each count by string.chars.size and multiply by 100
# use hash notation to add those values to their corresponding keys in the output hash

def letterpercentages(string)
  output = {lowercase: 0, uppercase: 0, neither: 0 }
  lowercount = 0
  uppercount = 0
  neithercount = 0
  string.chars.each do |char|
    if char.match(/[a-z]/)
      lowercount += 1
    elsif char.match(/[A-Z]/)
      uppercount += 1
    else
      neithercount += 1
    end
  end
  output[:lowercase] = (lowercount.to_f/string.length)*100
  output[:uppercase] = (uppercount.to_f/string.length)*100
  output[:neither] = (neithercount.to_f/string.length)*100
  output
end

p letterpercentages('abcDeFg123')

















#input: string
#output: hash with 3 key-value pairs. Percent Uppercase, Percent Lowercase, and Percent Neither
#Create an empty hash called output. Within the method iterate through each character in the string.chars array. If character is in /[A-Z]/ add to upper_count. same for lowercase and neither. UpperPercent = (uppercount.to_f/string.length)*100
#add percentages to the output[uppercase]. Do the same with lowercase. With neither use regex /[^A-Za-z]/.

# def letter_percentages(string)
#   percentages = {lowercase:0, uppercase:0, neither:0}
#   lowercount = 0
#   uppercount = 0
#   neither = 0
#   string.chars.each do |char|
#     if char.match(/[A-Z]/)
#       uppercount +=1
#     elsif char.match(/[a-z]/)
#       lowercount +=1
#     else 
#       neither +=1
#     end 
#   end 
#   percentages[:lowercase] = (lowercount.to_f/string.length)*100
#   percentages[:uppercase] = (uppercount.to_f/string.length)*100
#   percentages[:neither] = (neither.to_f/string.length)*100
#   percentages 
# end 

# p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }  

# #slightly condensed version: 

# def letterpercentages(string)
#   percentages = {lowercase:0, uppercase:0, neither:0}
#   count = {lowercount:0, uppercount:0, neither:0}
#   string.chars.each do |char|
#     count[:uppercount] +=1 if char.match(/[A-Z]/)
#     count[:lowercount] +=1 if char.match(/[a-z]/)
#     count[:neither] +=1 if char.match(/[^A-Za-z]/)
#   end 
  
#   percentages[:lowercase] = (count[:lowercount].to_f/string.length)*100
#   percentages[:uppercase] = (count[:uppercount].to_f/string.length)*100
#   percentages[:neither] = (count[:neither].to_f/string.length)*100
#   percentages 
# end

# p letterpercentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
