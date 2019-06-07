#register current value
#stack is an array where items are added and taken away via push and pop methods
#iterate over array of split string to carry out each individual command. 

def minilang(string)
  register = 0
  stack = []
  string.split.each do |word|
    case word
      when 'PRINT' 
        puts register
      when 'PUSH' #register to stack. leave in register
        stack << register 
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register = register/stack.pop
      when 'MOD'
        register = register.remainder(stack.pop)
      when 'POP'
        register = stack.pop
      else 
        register = word.to_i
    end 
  end 
  register
end