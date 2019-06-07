#Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string)
  output = '' 
  change_to_upcase = true
  string.chars.map do |char|
    if char=~/[^A-Za-z]/ 
      output << char
    elsif change_to_upcase
      output << char.upcase
      change_to_upcase=!change_to_upcase
    else 
      output << char.downcase
      change_to_upcase=!change_to_upcase
    end 
  end 
  output 
end 

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'