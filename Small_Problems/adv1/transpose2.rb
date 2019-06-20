def transpose(matrix)
  result = []
  num_row = (matrix.size)-1
  num_column = (matrix.first.size) - 1
  
  (0..num_column).each do |column_index|
    new_row = (0..num_row).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

array = [[1, 2], [3, 4], [5, 6]]
p transpose([[1, 2], [3, 4], [5, 6]])
