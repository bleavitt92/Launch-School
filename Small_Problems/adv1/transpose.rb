# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# input: nested array
# output: nested array transposed
# example 3x3 array: each element goes from position [n][m] to [m][n]
# use array.size to find the nxn size of matrix
# create a new matrix called new_array = [] 
# loop through counter == 0
# - n.times array[n][counter] added to the first row array of new_array
# - after going through n times, add one to the counter and repeat

def flip(array)
  new_array = []
  n = array.size
  
  n.times do 
    new_array << []
  end 

  counter = 0
  loop do 
    n.times do |index|
      new_array[counter] << array[index][counter]
    end 
    counter +=1
    break if counter == n
  end 
  new_array
end 

p flip([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]


# launch schools method: 

def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end