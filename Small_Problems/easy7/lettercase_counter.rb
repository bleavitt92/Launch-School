#Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# input: string
# output: hash
# initiate a hash with lowercase = 0, uppercase = 0, and neither = 0
# separate string into an array of characters. 
# if char.match(regex for uppercase) then, hash[uppercase] +=1
# repeat for lowercase and else statement for neither. 

def letter_case_count(string)
  counts = { :lowercase => 0, :uppercase => 0, :neither => 0 }
  string.chars.each do |char|
    if char.match(/[A-Z]/)
      counts[:uppercase] += 1
    elsif char.match(/[a-z]/)
      counts[:lowercase] += 1
    else 
      counts[:neither] += 1
    end 
  end 
  counts
end 


letter_case_count('Hey David!')
letter_case_count('abCdef 123')
letter_case_count('AbCd +Ef')
letter_case_count('123')
letter_case_count('')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }








#input: string
#output: hash - lowercase:num, uppercase:num, neither:num 
#separate the string by characters. count how many a-z, how many A-Z, and how many ^a-zA-Z
#iterate over the array of characters. If in A-Z, add 1 to hash[caps] etc

# def letter_case_count(string)
#   char = string.chars
#   output = {lowercase: 0, uppercase: 0, neither: 0}
#   char.each do |character|
#     if ('A'..'Z').to_a.include?(character)
#       output[:uppercase] +=1
#     elsif ('a'..'z').to_a.include?(character)
#       output[:lowercase] +=1
#     else 
#       output[:neither] +=1
#     end 
#   end 
#   puts output
# end 
      
letter_case_count('Hey David!')
letter_case_count('abCdef 123')
letter_case_count('AbCd +Ef')
letter_case_count('123')
letter_case_count('')