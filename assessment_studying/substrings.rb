# find all substrings of a word

def find_substrings(string)
  substrings = []
  0.upto(string.length-1) do |index1|
    index1.upto(string.length-1) do |index2|
      substrings << string[index1..index2]
    end 
  end 
  substrings.delete_if {|str| str.length <2 }
end

find_substrings('hello')

# find if the two strings given have any matching substrings

def substring_test(string1, string2)
  substrings1 = find_substrings(string1)
  substrings2 = find_substrings(string2)
  substrings1.each do |substr1|
    return true if substrings2.include?(substr1)
  end 
  false
end

p substring_test('Something', 'Fun') # ==  false
p substring_test('Something', 'Home') # == true