#Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

#input: string
#output: true or false depending on if parentheses are balanced
#have a counter that is = 0. iterate through string.chars and Add 1 to the counter when find '(' and subtract 1 from the counter when find ')'. Break when counter is less than 0. If this works, then the counter should = 0 so can get the true/false value by at the end saying counter == 0

def balanced?(string)
  count = 0
  string.chars.each do |char|
    if char == '('
      count +=1
    elsif char == ')'
      count -=1
    break if count<0
    end 
  end  
  count.zero?
end 

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
balanced?('Hey!') #== true
balanced?(')Hey!(') #== false
balanced?('What ((is))) up(') #== false