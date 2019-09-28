require 'pry'

START = 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]] # diags

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
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
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delim=", ", word="or")
  output = ''
  if array.length == 2
    output = "#{array[0]} or #{array[1]}"
  elsif array.length == 1
    output = "#{array[0]}"
  else
    array.each_with_index do |num, idx|
      idx < array.length-1 ? (output += "#{num}" + "#{delim}") : output += "#{word} #{num}"
    end
  end
  output
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice."
    end
  end
  brd[square] = PLAYER_MARKER
end


def at_risk(line, brd, mark)
  if brd.values_at(line[0],line[1], line[2]).count(mark) == 2
    brd.select {|position, value| line.include?(position) && value == INITIAL_MARKER}.keys.first
  end
end


def computer_places_piece!(brd)
  square = nil

  # start with 5
  if empty_squares(brd).include?(5)
    square = 5
  end
  
  # offensive move
  if !square
    WINNING_LINES.each do |line|
      square = at_risk(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # defensive move
  if !square
      WINNING_LINES.each do |line|
      square = at_risk(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def score_counter(brd, score)
  score[:Player] += 1 if detect_winner(brd) == "Player"
  score[:Computer] += 1 if detect_winner(brd) == "Computer"
  score
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def play_piece!(brd, current)
  computer_places_piece!(brd) if current == "computer"
  player_places_piece!(brd) if current == "player"
end


def alternate_player(current)
  return "computer" if current == "player"
  return "player" if current == "computer"
end

def starting_player(input)
  if START == "choose"
    prompt "Who starts? Player or computer?"
    output = gets.chomp
  else
    output = START
  end
  output
end

# Main Game Loop
loop do
  score = {Player: 0, Computer: 0}
  current_player = starting_player(START)

  loop do
    board = initialize_board
    
    loop do
      display_board(board)
      prompt "Player score: #{score[:Player]} || Computer score: #{score[:Computer]}"
      binding.pry
      play_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    score_counter(board, score)
    break if score.has_value?(5)
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!!"
