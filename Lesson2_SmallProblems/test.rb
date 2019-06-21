
def name
  puts "George"
end

name = "Lisa"

loop do
  puts name
  break
end

def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[1]
end

make, model = car("Ford Mustang")
make == "Ford"         # => true
model.start_with?("M")