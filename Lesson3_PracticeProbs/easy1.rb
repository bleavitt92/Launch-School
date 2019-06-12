# Q1
  # What would you expect the code below to print out?
  numbers = [1, 2, 2, 3]
  numbers.uniq
  
  # puts numbers
  
  # [1, 2, 2, 3]

# Q3
  # replace "important" with "urgent"
  
  advice = "Few things in life are as important as house training your pet dinosaur."
  advice = advice.split(' ')
  advice[6] = "urgent"
  advice.join(' ')

# or
  advice2 = "Few things in life are as important as house training your pet dinosaur."
  advice2.gsub!('important', 'urgent')

# Q4
  numbers = [1, 2, 3, 4, 5]
  numbers.delete_at(1) # deletes whatever is at index 1 - so '2'
  numbers.delete(1) # deletes the number 1

# Q5
  # determine if 43 is between 10 and 100 programatically
  (10..100).cover?(43)

# Q6
  # starting with the string famous_words show two different ways to put the expected "Four score and" in front 
  famous_words = "seven years ago..."
  string = "Four score and #{famous_words}"
  
  # 2nd way
  famous_words.prepend("Four score and ")

# Q7
  def add_eight(number)
    number + 8
  end
  
  number = 2
  
  how_deep = "number"
  5.times { how_deep.gsub!("number", "add_eight(number)") }
  
  how_deep
  
  eval(how_deep) #42

# Q8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
  
# Q9
  flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
  p flintstones.assoc("Barney")
  