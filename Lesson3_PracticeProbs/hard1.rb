# Q1
if false
  greeting = “hello world”
end

greeting
# What will happen when greeting is referenced?
  # ruby evaluates everything except false and nil to be true so the if condition will not apply. 
  # variables can be initialized in an if block to nil. returns nil

# Q2
# What is the result of the last line of code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

informal_greeting  #  => "hi there"
greetings # {:a=>"hi there"} 
  # this is becasue informal_greeting is a reference to the original object

# Q3
# A prints: 
  # one is one
  # two is two
  # three is three

# B prints: 
  # same as A

# C prints: 
  #one is: two
  #two is: three
  #three is: one
#this one changes b/c used gsub! which mutates. Others would puts the change within the method but not outside it. 

# Q4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
     word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
   end
    
  true
end