# Q1 
# 10.times{|i| puts " "*i + "The Flintstones Rock"}

# Q2
# puts "the value of 40 + 2 is " + (40 + 2) # gives error b/c string interpolation
# puts "the value of 40 + 2 is " + "#{(40 + 2)}" # could have used .to_s as well

# Q3
def factors(number)
  divisor = number
  factors = []
  if number > 0
    loop do 
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    break if divisor <= 0
    end 
  else 
    puts "Invalid number."
  end 
  factors
end

# Q4
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# difference is in the input arguments changing. The first one, buffer, the input argument, changes. In the second method, the input_array input argument does not change. 

# Q5

def fib(first_num, second_num, limit) #added limit as an argument instead of having it defined before
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
# puts "result is #{result}"

# Q6
answer = 42

def mess_with_it(some_number) 
  some_number += 8 
end

new_answer = mess_with_it(answer) # new_answer == 50

answer - 8 # 34

# Q7
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# Q8
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock") # paper

# Q9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo) # returns no