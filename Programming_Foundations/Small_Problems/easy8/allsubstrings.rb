#Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

#You may (and should) use the substrings_at_start method you wrote in the previous exercise:

#take the string and loop through each 1 up to the length of the string. define another string for the moment as start to -1 [this index .. -1]

def substrings_start(string)
  begin_substrings = [] 
  1.upto(string.length) do |index|
    begin_substrings << string[0, index]
  end 
  begin_substrings
end 

def substrings(string)
  result = []
  0.upto(string.length-1) do |this_index| 
    this_string = string[this_index..-1]
   result <<  substrings_start(this_string)
  end 
  result
end 

p substrings('abcd')