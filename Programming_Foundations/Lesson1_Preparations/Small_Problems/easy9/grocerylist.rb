#Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

#input: nested array of strings and numbers
#output: array of strings
#take the nested array = [[fruit, n], [fruit2, n2], [fruit3, n3]] and iterate over the large array using array[1][0] notation. iterate over the array setting array[n][0] to be added to the output array[n][1] times. 

def buy_fruit(list)
  output = []
  list.each do |item|
    item[1].times do 
      output << item[0]
    end 
  end 
  p output
end 

buy_fruit([['apple', 3], ['orange', 2]])