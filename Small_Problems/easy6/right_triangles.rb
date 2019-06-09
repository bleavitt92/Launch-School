#Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

#input: integer
#output: string of stars n long
#need : loop where print x spaces and y stars. x+y = n. start with x = n-1 and y = 1. each loop, decrease x by 1 and increase y by 1. repeat n times. 
# .   *
# .  **
# . ***

def triangle(n)
  num_spaces = n-1
  num_stars = 1
  n.times do 
    puts ' '*num_spaces+'*'*num_stars
    num_spaces -=1
    num_stars +=1
  end 
end 

#triangle(3)

def upside_down(n)
  num_spaces = 0
  num_stars = n 
  n.times do 
    puts ' '*num_spaces+'*'*num_stars
    num_spaces +=1
    num_stars -=1
  end 
end 

upside_down(4)