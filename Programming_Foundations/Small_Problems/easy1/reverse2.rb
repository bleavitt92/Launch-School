#Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

#input: string
#output: string with any word that is 5+ letters reversed
#take the string and separate the words. If a word is more than 5 letters, reverse it. If not, keep it. Join the string back together before printing out. 

def reverse_words(string)
  words = []
  string.split do |word| 
    if word.length>=5 
      words << word.reverse
    else 
      words << word
    end 
  end 
  words.join(' ')
end 

puts reverse_words("Hello I'm Betsy")