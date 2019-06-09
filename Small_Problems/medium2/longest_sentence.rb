#Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

#input: strings of sentences
#output: string of the longest sentence and the number of words in that sentence
#separate string by . ! or ? using: string.split(/[.?!]/)
#iterate through the array and count using split.size for each sentence. 

def longest_sentence(string)
  sentences = string.split(/[.?!]/)
  lengths = []
  #here could have done sentences.max_by{|sentence| sentence.split.size} for lines 12-16
  sentences.each do |sentence|             
    lengths << sentence.split.size
  end 
  longest = lengths.sort.last
  index = lengths.find_index(longest)
  puts "The longest sentence is: #{sentences[index]}. It has a length of #{longest} words."
end 


longest_sentence('What up? you are so cute. hi. hello!')
text = File.read("pg84.txt")
longest_sentence(text)