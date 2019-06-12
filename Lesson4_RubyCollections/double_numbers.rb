# - initiate method name double_numbers that takes an array of numbers
# - initiate counter = 0
# - loop through each value of numbers using indexes and multiply it by 2
# - - number multiplied by 2
# - - add 1 to counter
# - - break when counter equals numbers.size

array = [1, 2, 3, 4]
array2 = [10, 20, 30]

def double_numbers!(numbers)
  counter = 0
  loop do 
    numbers[counter] *= 2
    counter += 1
    break if counter == numbers.size
  end 
  numbers
end 

double_numbers!(array)

# - double numbers that are at an odd index position

def double_some_nums(numbers)
  counter = 0
  result = []
  loop do 
    break if counter == numbers.size
    current_num = numbers[counter]
    if counter.odd?
      current_num *= 2
      result << current_num
    else 
      result << current_num
    end 
    counter += 1
  end 
  result
end 

double_some_nums(array)

# - create a method named multiply that takes two arguments - An array and a number to multiply by
# - initiate a counter = 0
# - initiate loop that breaks when counter equals array.size
# - - using the counter as index, iterate through each array value
# - - mutliply each value by the number specified in the argument
# - - add 1 to the counter
# - - end loop
# - return the array

def multiply(numbers, multiplier)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= multiplier
    counter += 1
  end 
  numbers 
end 

p multiply(array2, 4)