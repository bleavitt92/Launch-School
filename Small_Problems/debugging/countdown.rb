def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter) #adding counter = b/c variable scope
end

puts 'LAUNCH!'
