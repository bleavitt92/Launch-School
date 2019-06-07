#To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

#Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

#input: 3 integers, angles in triangle
#ouput: symbol - :right, :acute, :obtuse, or :invalid
#first sort the values into an array and arange them. 
#case , sum up the angles and when angles !=180 or when an angle <=0 :invalid
#next when largest angle > 90, obtuse, etc for right and acute

def tri_angle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3].sort!
  largest = angles[2]
  smallest = angles[0]
  case
  when smallest<=0 || angles.reduce(:+) != 180
    :invalid
  when largest > 90
    :obtuse
  when largest == 90
    :right
  when largest < 90
    :acute
  end 
end 

p tri_angle(60, 70, 50) == :acute
p tri_angle(30, 90, 60) == :right
p tri_angle(120, 50, 10) == :obtuse
p tri_angle(0, 90, 90) == :invalid
p tri_angle(50, 50, 50) == :invalid