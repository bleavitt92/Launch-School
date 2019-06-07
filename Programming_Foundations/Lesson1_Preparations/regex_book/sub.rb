#Write a method that changes the first arithmetic operator (+, -, *, /) in a string to a '?' and returns the resulting string. Don't modify the original string.

def mystery_math(equation)
 equation.sub(/[+\-*\/]/, '?')
end 

mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'

#similar but change all arithmetic operators to ? - don't modify the original string

def mysteriousMath(equation)
   equation.gsub(/[+\-*\/]/, '?')
end 

mysteriousMath('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
mysteriousMath('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

#Write a method that changes the first occurrence of the word apple, blueberry, or cherry in a string to danish

def danish(string)
  string.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end 
danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'

danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'

danish('The cherry of my eye')
# -> 'The danish of my eye'

danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'

danish('I love pineapple')
# -> 'I love pineapple'

#Challenge: write a method that changes dates in the format 2016-06-17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.

def format_date(date)
  date.gsub(/^(\d{4})-(\d{2})-(\d{2}$)/, '\3.\2.\1')    #capture groups make this way easier!
end 

format_date('2016-06-17')

#Challenge: write a method that changes dates in the format 2016-06-17 or 2016/06/17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section

def formatdate(date)
  p date.gsub(/^(\d{4})([-\/])(\d{2})([-\/])(\d{2}$)/, '\5.\3.\1')   
end 

formatdate('2016-06-17')
formatdate('2016/06/17')
formatdate('2016/06-17')