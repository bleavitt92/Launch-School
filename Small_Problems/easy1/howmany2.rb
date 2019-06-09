smallarr = ['hi', 'hi', 'hi', 'hey', 'hi']

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurances(array)
  hash = {} 
  array.each do |word|
   i = 0
   num = array.count(word)
    hash[word] = num 
    i +=1
  end 
  p hash
end 

count_occurances(vehicles)