#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, n)
  n.times {puts string}
end 

repeat("hello", 3)

