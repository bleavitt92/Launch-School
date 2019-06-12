loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # added to break inner loop after first iteration
  end
  break # added to break outer loop after first iteration
end

puts 'This is outside all loops.'