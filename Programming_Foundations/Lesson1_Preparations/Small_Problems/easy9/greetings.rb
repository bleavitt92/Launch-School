#Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

#input: 1 array (w/ 2+ elements for a name), 1 hash (2 keys :title, :occupation and values)
#output: greeting using the person's full name and title. 
#ex: greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
      #=> Hello, John Q Doe! Nice to have a Master Plumber around.
#create a method named greetings that you give a name in an array to and a hash. 

def greetings(full_name_array, status)
  fullname = full_name_array.join(' ')
  puts "Hello #{fullname}! Nice to have a #{status[:title]} #{status[:occupation]}"
end 

greetings(['David', 'C', 'Leavitt'], :title => 'awesome', :occupation => 'financial advisor')
