#Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

#input: string
#output: string where every other character is capitalized. 
  #all characters count but only lowercase ones change to capital or uppercase to lowercase. 
#string.chars to change string to array. map over the array, if even index.upcase, if odd.downcase. .join
#index 0-cap    1-lower   2-cap    3-lower    4-cap   5-lower   6-cap

def staggered_case(string)
  count = 0 
  array = string.split('')
  array.map do |char|
    if count.even?
      char.upcase!
    else 
      char.downcase!
    end
    count +=1
  end 
  array.join('')
end 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#another way using strings instead of arrays 

def stagger(string)
  output = '' 
  change_to_upcase = true
  string.chars.map do |char|
    if change_to_upcase
      output << char.upcase
    else 
      output << char.downcase
    end 
    change_to_upcase=!change_to_upcase
  end 
  output 
end 

p stagger('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p stagger('ALL_CAPS') == 'AlL_CaPs'
p stagger('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'