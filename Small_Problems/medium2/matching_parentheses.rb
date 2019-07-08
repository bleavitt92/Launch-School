#Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# input: string
# output: true or false depending on if parentheses are balanced
# initiate a counter = 0. Everytime there is a '(' add one to counter, everytime '(' subtract 1 from counter. 
# If counter is ever negative, false. If at end counter !=0, false

def balanced?(string)
  counter = 0
  string.chars do |char|
    counter += 1 if char == '('
    counter -=1 if char == ')'
    if counter < 0
      return false
    end 
  end 
  counter.zero?
end


 p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false













# def balanced?(string)
#   count = 0
#   string.chars.each do |char|
#     if char == '('
#       count +=1
#     elsif char == ')'
#       count -=1
#     break if count<0
#     end 
#   end  
#   count.zero?
# end 

