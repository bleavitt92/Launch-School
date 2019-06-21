def joinor(array, delimeter = ', ', word = 'or')
  case array.size
  when 0
    ''
  when 1
    array.join
  when 2
    array.join(" #{word} ")  
  else
    array[-1] = word + ' ' + array[-1].to_s
    array.join("#{delimeter}")
  end
end 

p joinor([1, 2], ',')                   # => "1 or 2"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') 