#Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

#You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

#input: string of words
#output: same string of words except first and last letters on each word are swapped. 
#take the string of words and separate it into an array of single words. Then separate it into nested arrays where each word is now an array of letters. 
#loop through each nested array of words. Use counter = 0 for index of nested array. 
#First array - count items in array. then array[0], array[n] = array[n], array[0]


def swap(string)
  letter_array = string.split(' ').map{|word| word.split('')} 
  w = string.split(' ').count 
  i = 0
  swapped_words = []
  loop do 
    n = letter_array[i].count
    letter_array[i][0], letter_array[i][n-1] = letter_array[i][n-1], letter_array[i][0]
    swapped_words << letter_array[i].join
    i += 1
    break if i > w-1
  end 
  swapped_words.join(' ')
end 
p swap('hey hi yourself')
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

