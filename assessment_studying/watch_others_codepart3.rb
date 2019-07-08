# input: string indicating numbers and operation
# output: integer after carrying out the numbers and operation

# store number word to integer conversions in a hash
# # initialize that hash
# store operations in operation_hash
  # initialize this hash as well

# break the input string up using .split(' ') so it is now an array of words. 
# iterate through the array of words using hash notation to change each word to its value.

# now, need to create a loop before the case statement. Just perform the operation to the first two objects
# first two objects answer is now array[0] then perform operation to array[0] and array[2], etc. 

def computer(string)
  num_hash = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 
               'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 
               'zero' => 0 }
  string.delete!('by')
  words = string.split(' ')
  array = words.map do |word|
    if num_hash.include?(word)
      word = num_hash[word]
    else
      word
    end
  end

  loop do 
    case array[1]
    when 'plus'
      array [0] = array[0] + array[2]
    when 'minus'
      array [0] = array[0]-array[2]
    when 'times'
      array[0] = array[0]*array[2]
    when 'divided'
      array[0] = array[0]/array[2]
    end
    array.delete_at(1)
    array.delete_at(1)
    break if array.size == 1
  end
  array
end

# p computer('two plus two')
# p computer("seven minus six")
# p computer("zero plus eight")
p computer('two plus two times three')
p computer('three minus one plus five times four divided by six')