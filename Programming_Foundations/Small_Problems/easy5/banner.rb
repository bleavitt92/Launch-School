#Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  n = string.length
  print '+'
  
  n.times do 
    print '-'
  end 
  puts '+'
  
  print '|' 
  n.times do 
    print ' '
  end 
  puts '|'
  
  puts '|' + string + '|'
  
  print '|' 
  n.times do 
    print ' '
  end 
  puts '|'
  
  print '+'
  n.times do 
    print '-'
  end 
  puts '+'
end 

##easier way

def print(string)
  n = string.length
  top_line_rule = "+#{'-'*(n+2)}+"
  empty_line_rule = "|#{' '*(n+2)}|"
  string_line = "| #{string} |"
  puts top_line_rule
  puts empty_line_rule
  puts string_line
  puts empty_line_rule
  puts top_line_rule
end 

print('hey you')