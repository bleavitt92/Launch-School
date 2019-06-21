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

def busted?(hand)
  sum_cards(hand) > 21
end

def twenty_one?(hand)
  sum_cards(hand) == 21
end

def dealer_done?(hand)
  sum_cards(hand) >= 17
end

def who_won?(plyr, dler)
  if busted?(plyr) || sum_cards(dler) > sum_cards(plyr)
    'Dealer'
  elsif busted?(dler) || sum_cards(plyr) > sum_cards(dler)
    'Player'
  else
    "It's a tie, no-one"
  end
end

# main game loop
loop do
  system 'clear'
  deck = initialize_deck

  player_hand = initial_deal_cards(deck)
  show_cards(player_hand)
  sum_cards(player_hand)

  cards_left!(deck, player_hand)

  dealer_hand = initial_deal_cards(deck)
  cards_left!(deck, dealer_hand)

  card_shown = dealer_hand.sample
  prompt("Dealer has: #{card_shown[0]} and an unknown card.")

  prompt("It's your turn!")

  loop do
    break if busted?(player_hand) || twenty_one?(player_hand)
    prompt("'h' for hit, 's' for stay: ")
    decision = gets.chomp.downcase
    sum_cards(player_hand)
    break if decision == 's'
    deal_card(deck, player_hand)
    show_cards(player_hand)
    cards_left!(deck, player_hand)
  end

  if busted?(player_hand)
    prompt("You busted!")
  else
    prompt("You chose to stay!")
  end

  unless busted?(player_hand)
    puts "Dealer's turn now"
    sleep(1)
    loop do
      break if dealer_done?(dealer_hand)
      deal_card(deck, dealer_hand)
      cards_left!(deck, dealer_hand)
    end
    prompt("Your score: #{sum_cards(player_hand)}")
    prompt("Dealer score: #{sum_cards(dealer_hand)} ")
  end

  prompt("#{who_won?(player_hand, dealer_hand)} won!")
  prompt("Play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
