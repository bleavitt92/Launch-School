# Given the array below
# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end 

# =============================================================================

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum = 0
ages.each do |key, value|
  sum += value
end 
sum
# =============================================================================

# In the age hash: throw out the really old people (age 100 or older).


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! {|key, value| value >=100}
# =============================================================================

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

youngest = ages["Herman"]
ages.each{|key, value| youngest = value if value < youngest}
end 
youngest 

# easier - ages.values.min 
  # the .values returns an array of values, min array method to find smallest in that array

# =============================================================================
# In the array: Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.find_index{|name| name.match(/^Be/)}

# =============================================================================
# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0,3]
end 
# =============================================================================

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
statement = statement.downcase
letter_count = {}

'a'.upto('z') do |letter|
  if statement.downcase.include?(letter)
    count = statement.count(letter)
    letter_count[letter] = count
  end 
end 
# =============================================================================

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# => [3, 4]

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# 1
# 2
# => [1, 2]

# =============================================================================

# Write your own version of the rails titleize implementation.

title = 'the flintstones rock'

title.split.map { |word| word.capitalize}.join(' ')

words = 'same kind of different as me'
words.split.map { |word| word.capitalize }.join(' ')
# =============================================================================

# Given the munsters hash below, modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, value_hash|
  if value_hash["age"] < 17
    value_hash["age_group"] = "kid"
  elsif value_hash["age"] > 64
    value_hash["age_group"] = "senior"
  else 
    value_hash["age_group"] = "adult"
  end 
end 

