BLACK_JACK = 21

def pause(n = 1)
  sleep(n)
end

def dividing_line
  puts '--------------------------------'
end

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_score
  new_score = { "Player" => 0, "Dealer" => 0 }
  new_score
end

def initialize_deck
  new_deck = []
  suits = ['H', 'D', 'S', 'C']
  cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen',
           'King', 'Ace']
  suits.each do |suit|
    cards.each do |card|
      new_deck << [card, suit]
    end
  end
  new_deck.shuffle
end

def deal_cards(carddeck, hand, num_cards = 1)
  num_cards.times { hand << carddeck.pop }
  hand
end

def show_cards(hand)
  num_of_card = []
  hand.each { |card| num_of_card << card[0] }
  case num_of_card.size
  when 2
    puts "#{num_of_card.join(' and ')} for a sum of #{sum_cards(hand)}"
  else
    num_of_card[-1] = 'and ' + num_of_card[-1]
    puts "#{num_of_card.join(', ')} for a sum of #{sum_cards(hand)}"
  end
end

def card_value(card)
  if card[0] == 'Ace'
    11
  elsif card[0].to_i == 0
    10
  else
    card[0].to_i
  end
end

def sum_cards(hand)
  sum = 0
  hand.each do |card|
    sum += card_value(card)
  end

  hand.select { |card| card[0] == 'Ace' }.count.times do
    sum -= 10 if sum > BLACK_JACK
  end

  sum
end

def busted?(tot)
  tot > BLACK_JACK
end

def twenty_one?(tot)
  tot == BLACK_JACK
end

def dealer_done?(tot)
  tot >= 17
end

def who_won?(plyr, dler)
  if busted?(plyr) || (dler > plyr && !busted?(dler))
    'Dealer'
  elsif busted?(dler) || plyr > dler
    'Player'
  else
    "It's a tie, no-one"
  end
end

def play_again?
  dividing_line
  prompt("Do you want to play again? (y or n)")
  loop do
    answer = gets.chomp
    if answer.downcase == 'y'
      return 'play again'
    elsif answer.downcase == 'n'
      return 'game over'
    else
      prompt("Invalid input. Enter 'y' or 'n'.")
    end
  end
end

def hit_or_stay
  loop do
    prompt("'h' for hit, 's' for stay: ")
    input = gets.chomp
    if input == 's'
      return 'stay'
    elsif input == 'h'
      return 'hit'
    else
      prompt("Invalid input.")
    end
  end
end

def player_turn(carddeck, hand, plyr)
  loop do
    plyr = sum_cards(hand)
    break if busted?(plyr) || twenty_one?(plyr)
    decision = hit_or_stay
    break if decision == 'stay'
    prompt("Hit!")
    pause
    deal_cards(carddeck, hand)
    print "Your cards: "
    show_cards(hand)
    pause
  end
end

def dealer_play(carddeck, hand, dler)
  loop do
    print "Dealer's cards: "
    show_cards(hand)
    dler = sum_cards(hand)
    pause
    break if dealer_done?(dler) || busted?(dler)
    prompt("Dealer hits...")
    pause
    deal_cards(carddeck, hand)
  end
end

def display_scores(plyr, dler)
  pause
  dividing_line
  prompt("Your total: #{plyr}")
  pause(1)
  prompt("Dealer total: #{dler}")
  pause(1)
end

# main game loop
prompt("Welcome to Twenty-One!")
score = initialize_score

loop do
  system 'clear'
  player_hand = []
  dealer_hand = []
  dividing_line
  prompt("Start Game!")
  pause
  deck = initialize_deck

  player_hand = deal_cards(deck, player_hand, 2)
  print "Your cards: "
  show_cards(player_hand)
  player_total = sum_cards(player_hand)
  pause

  dealer_hand = deal_cards(deck, dealer_hand, 2)
  dealer_total = sum_cards(dealer_hand)
  card_shown = dealer_hand.sample
  puts "Dealer has: #{card_shown[0]} and an unknown card."
  pause(2)

  # player's turn
  prompt("It's your turn!")
  player_turn(deck, player_hand, player_total)

  if busted?(sum_cards(player_hand))
    prompt("Busted!")
  elsif twenty_one?(player_total)
    prompt("You got #{BLACK_JACK}!")
  else
    prompt("Stay!")
  end
  player_total = sum_cards(player_hand)

  pause
  dividing_line
  pause

  # dealer's turn
  unless busted?(player_total) || twenty_one?(player_total)
    prompt("Dealer's turn now...")
    pause(2)
    dealer_play(deck, dealer_hand, dealer_total)
    dealer_total = sum_cards(dealer_hand)

    if busted?(dealer_total)
      prompt("Dealer Busted!")
    elsif dealer_done?(dealer_total)
      prompt("Dealer is staying...")
    end
    pause

    unless busted?(dealer_total)
      display_scores(player_total, dealer_total)
    end
  end

  dividing_line
  score[who_won?(player_total, dealer_total)] += 1

  prompt("#{who_won?(player_total, dealer_total)} won!")
  pause
  prompt("The score is: Player:#{score['Player']} Dealer:#{score['Dealer']}")

  if score.values.include?(5)
    prompt("#{who_won?(player_total, dealer_total)} made it to 5! Game over.")
    break
  end
  pause
  break unless play_again? == 'play again'
end

prompt("Thanks for playing!")
