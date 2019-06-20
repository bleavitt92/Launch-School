# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

# - iterate over each word in the text file and check it against noun, verb, adjective, or adverb. 
# - when found to equal one of these 4 options, pick a random item from the corresponding value array using sample and replace the word with it

require 'yaml'
TEXT = YAML.load_file('madlibs.yml')
text = TEXT['sentences']

hash = {
  "noun" => %w(dog cat deer lizard shark turtle),
  "verb" => %w(runs licks walks sleeps barks yells eats),
  "adjective" => %w(yellow brown green sleepy lazy),
  "adverb" => %w(lazily quickly slowly loudly angrily)
}

# way 1 using yml file

madlib = text.split.map do |word|
  if hash.keys.include?(word)
    hash[word].sample 
  else 
    word
  end 
end 
madlib.join(' ')


# way 2 using txt file

txt = File.read('madlibs.txt')
madlibs = txt.split.map do |word|
  if hash.keys.include?(word)
    hash[word].sample 
  else 
    word
  end 
end
madlibs.join(' ')