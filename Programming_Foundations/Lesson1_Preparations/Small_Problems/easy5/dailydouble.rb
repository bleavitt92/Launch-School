#Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

#input: string
#output: string
#change input string to an array of characters. Set a counter (i) = 0. Add the array[index] to a new crunch array unless the array[count] == array[count +1]. break when count > array.length. 
  ###should it be -1 instead of plus 1? adding to new array instead of deleting from old array because the index won't change in the original array this way. 


def crunch(string)
  i = 0
  crunch = ''
  while i < string.length 
  crunch << string[i] unless string[i] == string[i+1]
  i+=1
  end 
  crunch
end 

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba') 
p crunch('ggggggggggggggg')
p crunch('a') 
p crunch('') 