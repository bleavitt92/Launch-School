#To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

#Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

#input: 3 integers representing the side length of each side in a triangle. 
#output: symbol :equilateral, :isosceles, :scalene, or :invalid
#write a condition that if any side if <=0 it in :invalid. Next, need the condition to add the two smallest numbers and make sure it is greater than the largest side. 

def triangle(s1, s2, s3)
  if (s1<=0 || s2<=0 || s3<=0)
    type = :invalid 
  elsif (s1+s2<=s3 || s1+s3<=s2 || s2+s3<=s1)
    type = :invalid
  elsif (s1==s2 && s2==s3)
    type = :equilateral 
  elsif (s1 == s2 || s2 == s3 || s1 == s3)
    type = :isosceles
  else 
    type = :scalene
  end 
  type
end 

p triangle(3, 6, 0)
p triangle(0, 9, 0)
p triangle(3, 3, 3)
p triangle(6, 7, 6)
p triangle(12, 10, 24)