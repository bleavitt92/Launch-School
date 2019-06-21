require 'pry'
def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  new_deck = []
  suits = ['H', 'D', 'S', 'C']
  cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  suits.each do |suit|
    cards.each do |card|
      new_deck << [card, suit]
    end
  end
  new_deck
end

def initialize_score
  new_score = { "Player" => 0, "Dealer" => 0 }
  new_score
end

def cards_left!(dck, hand)
  dck.keep_if { |card| !hand.include?(card) }
end

def initial_deal_cards(dck)
  hand = []
  2.times { hand << dck.sample }
  hand
end

def deal_card(dck, hand)
  hand << dck.sample
end

def show_cards(hand)
  nums = []
  print "=> You have: "
  hand.each { |card| nums << card[0] }
  case nums.size
  when 2
    puts nums.join(' and ')
  else
    nums[-1] = 'and ' + nums[-1]
    puts nums.join(", ")
  end
end

def sum_cards(hand)
  sum = 0
  hand.each do |card|
    if card[0] == "A"
      sum += 11
    elsif card[0].to_i == 0
      sum += 10
    else
      sum += card[0].to_i
    end
  end

  if sum > 21
    hand.select { |card| card[0] == 'A' }.count.times do
      sum -= 10 if sum > 21
    end
  end

  sum
end

def busted?(tot)
  tot > 21
end

def twenty_one?(tot)
  tot == 21
end

def dealer_done?(hand)
  sum_cards(hand) >= 17
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
  puts '________________'
  prompt("Do you want to play again? (y or n)")
  answer = gets.chomp
  answer.downcase.start_with?('y')
end 

# main game loop
score = initialize_score
loop do
  system 'clear'
  deck = initialize_deck

  player_hand = initial_deal_cards(deck)
  show_cards(player_hand)
  player_total = sum_cards(player_hand)
  cards_left!(deck, player_hand)

  dealer_hand = initial_deal_cards(deck)
  dealer_total = sum_cards(dealer_hand)
  cards_left!(deck, dealer_hand)

  card_shown = dealer_hand.sample
  prompt("Dealer has: #{card_shown[0]} and an unknown card.")

  prompt("It's your turn!")
  # player's loop 
  loop do
    break if busted?(player_total) || twenty_one?(player_total)
    prompt("'h' for hit, 's' for stay: ")
    decision = gets.chomp.downcase
    break if decision == 's'
    deal_card(deck, player_hand)
    player_total = sum_cards(player_hand)
    show_cards(player_hand)
    cards_left!(deck, player_hand)
  end

  if busted?(player_total)
    prompt("You busted!")
  elsif twenty_one?(player_hand)
    prompt("You got 21!")
  else
    prompt("You chose to stay!")
  end
  puts "-----------------------"

  # dealer's turn
  unless busted?(player_total)
    puts "Dealer's turn now"

    loop do
      prompt("Dealer's score is currently: #{dealer_total}")
      if dealer_done?(dealer_hand)
        puts "Dealer is staying..."
        break
      end 
      prompt("Dealer hits...")
      deal_card(deck, dealer_hand)
      dealer_total = sum_cards(dealer_hand)
      if busted?(dealer_total)
        prompt("Dealer Busted!")
        break 
      end 
      cards_left!(deck, dealer_hand)
    end
    dealer_total = sum_cards(dealer_hand)
    player_total = sum_cards(player_hand)
    unless busted?(dealer_total)
      puts "-----------------------------"
      prompt("Your total: #{player_total}")
      prompt("Dealer total: #{dealer_total}")
    end 
  end

  if who_won?(player_total, dealer_total) == 'Player'
    score['Player'] += 1
  elsif who_won?(player_total, dealer_total) == 'Dealer'
    score['Dealer'] += 1
  end

  prompt("#{who_won?(player_total, dealer_total)} won!")
  prompt("The score is: Player:#{score['Player']} Dealer:#{score['Dealer']}")
  if score.values.include?(5)
    prompt("#{who_won?(player_total, dealer_total)} made it to 5! Game over.")
    break 
  end 
  break unless play_again?
end

prompt("Thanks for playing!")
