
#easier or shorter way: 

def first_and_last_swap(word)
  word[0], word[-1] = word[-1], word[0]
  word
end 

def swap_each(string)
  result = string.split(' ').map do |word|
    first_and_last_swap(word)
  end 
  puts result.join(' ')
end 

swap_each("hey you")