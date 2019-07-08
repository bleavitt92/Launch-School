#A collection of spelling blocks has two letters per block, as shown in this list:

#B:O   X:K   D:Q   C:P   N:A
#G:T   R:E   F:S   J:W   H:U
#V:I   L:Y   Z:M
#This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

#Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

#input: string - single word
#output: true or false based on is the word can be spelled with the blocks
#Set matches up in a hash 
#need to separate the word into letters using string.split. Then, iterate over each letter looking for matches within the keys of the hash. 
#When find a match, re-iterate over each letter to see if there is a match with the value for that key[letter]

BLOCKS = {'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A', 'G'=>'T', 'R'=>'E', 'F'=>'S', 'J'=>'W', 'H'=>'U', 'V'=>'I', 'L'=>'Y', 'Z'=>'M'} 


def block_word?(word)
  word.chars.map do |letter|
   if word.chars.include?(BLOCKS[letter])
      return false
    else 
      next
    end 
  end
  true
end

p block_word?('BRANDY')


















# def block_word?(word)
#   key_matches = []
#   key_val_matches = []
#   word.split('').each do |letter|
#     if BLOCKS.include?(letter)
#       key_matches << letter
#     end                       #have an array key_matches that has all the first key matches within word
#   end                 #need to go through each letter in key_matches and see if the value is included in the word
#   key_matches.each do |k|
#     word.split('').each do |l|
#       if BLOCKS[k].include?(l)
#         key_val_matches << l
#       end 
#     end
#   end 
#   key_val_matches.empty?
# end 

# block_word?('BRANDY')
# block_word?('BRNDY')
# block_word?('brndy')
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true