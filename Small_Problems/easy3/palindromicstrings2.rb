#Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def real_palindrome?(string)
  string = string.downcase
  if /[0123456789]/.match(string)
   string = string.gsub!(/[0123456789]/, '')
  end 
  if /' '/.match(string)
    string = string.gsub!(' ', '')
  end 
  if /"'"/.match(string)
    string = string.gsub!("'", '')
  end 
  string == string.reverse 
end 

#BETTER WAY USE .delete!

def real_palindrome2?(string)
  string = string.downcase
  string.delete '(^a-z0-9)'
  string == string.reverse 
end 


p real_palindrome2?('madam') 
p real_palindrome2?('Madam')            # (case does not matter)
p real_palindrome2?("Madam, I'm Adam") # (only alphanumerics matter)
p real_palindrome2?('356653')
p real_palindrome2?('356a653') 
p real_palindrome2?('123ab321') 