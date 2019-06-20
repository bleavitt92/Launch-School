# what is the return value 

[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# => [1, 2, 3] becausae 'hi' is truthy every time

# ================================================

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# count how many words are less than 4. returns the number of items for which 
# the block evaluates as 'truthy'

# ================================================

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end
# reject returns all values for which the block evaluates as false
# puts always returns nil so reject will return an array [1, 2, 3]

# ================================================

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# initializes an empty hash, adds key as first letter and value as the value.
# returns the collection object so in this case the hash
# => {'a' => 'ant', etc }

# ================================================

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift
# takes off and returns the first key-value pair as an array 
# so returns [:a, 'ant']

# ================================================

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
# pop takes off and returns the last value in the array
# .pop returns 'caterpillar' then .size returns the length
# => 11

# ================================================

# What is the block's return value in the following code? How is it determined? 
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# the code returns true on the first iteration causing any? to evaluate as true
# no need to go further so only puts out 1 
# .any? returns boolean - in this case true because num.odd? evaluates to 
# be truthy for 1 and 3

# ================================================

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)
# take returns the first n elements of the array [1, 2]
# not destructive

# ================================================
# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
# [nil, bear] - if statement returns nil first go round because wasn't true

# ================================================

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# array. [1, nil, nil] return value of puts is nil