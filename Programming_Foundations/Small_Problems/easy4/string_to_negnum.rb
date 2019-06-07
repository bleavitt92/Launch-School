def string_to_integer(string)
  str_to_num = {
    '1'=>1,
    '2'=>2,
    '3'=>3,
    '4'=>4,
    '5'=>5,
    '6'=>6,
    '7'=>7,
    '8'=>8,
    '9'=>9,
    '0'=>0
  }
  
  array = string.split('')
  if array[0] == '-'
    array.delete_at(0)
    integers = array.map {|s| s = str_to_num[s]} 
    value = 0
    integers.each{ |i| value = 10 * value + i }
    value = -value
  elsif array[0] == '+'
    array.delete_at(0)
    integers = array.map {|s| s = str_to_num[s]} 
    value = 0
    integers.each{ |i| value = 10 * value + i }
    value
  else 
  integers = array.map {|s| s = str_to_num[s]} 
  value = 0
  integers.each{ |i| value = 10 * value + i }
  value
  end 
end 

p string_to_integer('1234')
p string_to_integer('-12')
p string_to_integer('+123')