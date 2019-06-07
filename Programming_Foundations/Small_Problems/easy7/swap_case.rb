#Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

#You may not use String#swapcase; write your own version of this method.

#input: string
#output: string where uppercase and lowercase are switched
#split string into individual characters. string.chars. map over array of characters. if letter is include? in A-Z, downcase. elsif chars.include? a-z upcase. else nothing. join back together with ' '.

def swapcase(string)
  string = string.chars.map do |char|
    if char =~/[A-Z]/ 
      char.downcase
    elsif char =~/[a-z]/
      char.upcase
    else
      char
    end 
  end 
  string.join
end 

p swapcase('Hey')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'