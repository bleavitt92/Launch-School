# - initiate empty hash called result
# - initiate keys_arr = produce.keys
# - set counter = 0
# - initiate loop that will break when the counter == produce.size
# - current_fruit = keys_arr[0]
# - if produce[current_fruit] == 'Fruit' then add the key-value pair to the 
# - add 1 to counter
#   result
# - return result

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  result = {}
  keys_arr = hash.keys
  counter = 0
  
  loop do 
    break if counter == hash.size
    current_fruit = keys_arr[counter]
    if hash[current_fruit] == 'Fruit'
      result[current_fruit] = 'Fruit'
    end 
    counter += 1
  end 
  result
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
