require "pry"

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                 [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_score
  new_score = { "Player" => 0, "Computer" => 0 }
  new_score
end

def empty_squares(brd) # returns an array of numbers with the position of empty squares
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimeter = ', ', word = 'or')
  case array.size
  when 0
    ''
  when 1
    array.join
  when 2
    array.join(" #{word} ")
  else
    array[-1] = word + ' ' + array[-1].to_s
    array.join("#{delimeter}")
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def computer_defence(brd)
  square = nil
  WINNNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      square = (line & empty_squares(brd)).join.to_i
      brd[square] = COMPUTER_MARKER
      break
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
          brd.values_at(*line).count(PLAYER_MARKER) == 0
      square = (line & empty_squares(brd)).join.to_i
      brd[square] = COMPUTER_MARKER
      break
    end
  end
  if !square
    computer_places_piece!(brd)
  end
end

def alternate_player(current_plyr)
  if current_plyr == 'Player'
    'Computer'
  else
    'Player'
  end
end

def place_piece!(brd, current_plyr)
  current_plyr == 'Player' ? player_places_piece!(brd) : computer_defence(brd)
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3 # changed from if brd[line[0]] == PLAYER_MARKER && brd[line[1]] etc
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def keep_score(scre_hsh, brd)
  if detect_winner(brd) == 'Player'
    scre_hsh['Player'] += 1
  elsif detect_winner(brd) == 'Computer'
    scre_hsh['Computer'] += 1
  end
end

# main game play
score_hash = initialize_score
loop do
  board = initialize_board
  current_player = 'Player'

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  keep_score(score_hash, board)
  prompt("The score is: Player: #{score_hash['Player']}; Computer: #{score_hash['Computer']}")
  if score_hash.values.include?(5)
    prompt("#{detect_winner(board)} won!")
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
