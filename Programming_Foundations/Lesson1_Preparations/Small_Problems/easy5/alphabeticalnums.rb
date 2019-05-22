#Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

#zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

#input array of integers
#output same numbers sorted alphabetically
#create array of the numbers 0-19 spelled out starting with zero so the index lines up correctly. When the program runs it'll iterate over each number in the input array, look it up by the index value, return it as the spelled out version. Then sort that array alphabetically. Then change that array back to integers


def alphabetic_number_sort(array)   #ex [1, 4, 6]
  spelled_nums = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  words = []
  alphabetized = []
  array.each do |n|
    words << spelled_nums[n]      # ['one', 'four', 'six']
    words = words.sort!           #words = ['four', 'one', 'six']
  end 
  words.each do |word|
    alphabetized << spelled_nums.index(word)
  end 
  alphabetized
end 

p alphabetic_number_sort([1, 4, 6])
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#way shorter: 

NUMBER_WORDS = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

def alpha_sort_by(numsarray)
  numsarray.sort_by! {|num| NUMBER_WORDS[num]}
end 

p alpha_sort_by([1, 4, 6])