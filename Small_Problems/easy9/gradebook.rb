#Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# input: 3 integers
# output: string - mean of the three inputs letter grade

def get_grades(g1, g2, g3)
  average = (g1 + g2 + g3)/3
  case 
    when average >= 90
     'A'
    when average >= 80
      'B'
    when average >= 70
      'C'
    when average >= 60
      'D'
    else
      'F'
  end 
end












#input: three integers
#output: string for letter grade
#take the mean of the three numbers by adding and dividing by 3. then use case statements to look up to puts out the letter grade. 

# def get_grades(g1, g2, g3)
#   avg = (g1+g2+g3)/3
#   case
#     when avg>=90
#       'A'
#     when 90>avg && avg>=80
#       'B'
#     when 80>avg && avg>=70
#       'C'
#     when 70>avg && avg>=60
#       'D'
#     when 60>avg
#       'F'
#   end 
# end 

p get_grades(90, 93, 92)
p get_grades(95, 90, 93) == "A"
p get_grades(50, 50, 95) == "D"