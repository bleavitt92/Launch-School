# create a method that adds letters multiple at a time
# ex: abcd -> A-Bb-Ccc-Dddd

# input: string
# output: string
# initialize an empty output array. 
# iterate over the given string.chars and add in elements to the output array one at a time
# use index to determine how many so use each_with_index
# for each iteration, always capitalize the first time each letter is added
# then do letter * index for how many more lowercase letters are added
# append a '-'

def expand_string(string)
  output = []
  string.chars.each_with_index do |char, ind|
    output << char.upcase
    output << char.downcase * ind
    output << '-' unless ind == string.length-1
  end
  output.join
end

p expand_string('abcd')