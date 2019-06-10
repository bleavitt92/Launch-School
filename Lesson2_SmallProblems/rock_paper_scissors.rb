VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def winner?(player, computer)
  if win?(player, computer)
    player
  elsif win?(computer, player)
    computer
  end
end

score = { :you => 0, :computer => 0 }
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose: #{choice}. Computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)

  winner = winner?(choice, computer_choice)
  if winner == choice
    score[:you] += 1
  elsif winner == computer_choice
    score[:computer] += 1
  end
  prompt("The score is #{score}")
  
  if score[:you] >= 5
    prompt("You are the grand winner! Game over.")
    break
  elsif score[:computer] >= 5
    prompt("The computer is the grand winner! Game over.")
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing!")
