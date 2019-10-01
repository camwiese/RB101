require 'pry'

PLAYING_TO_NUMBER = 21
DEALER_HITS = 17
WINNING_SCORE = 5

CARD_VALUES = {
  "1" => [1],
  "2" => [2],
  "3" => [3],
  "4" => [4],
  "5" => [5],
  "6" => [6],
  "7" => [7],
  "8" => [8],
  "9" => [9],
  "10" => [10],
  "Jack" => [10],
  "Queen" => [10],
  "King" => [10],
  "Ace" => [11]
}

def prompt(msg)
  puts "=> #{msg}"
end

# Supporting Methods
def bust?(hand_value)
  hand_value > PLAYING_TO_NUMBER
end

def display_hand(hand, show_full=true)
  return "#{hand[0]} and Unknown" unless show_full
  joinor(hand)
end

# Initialize Deck
def initialize_deck
  cards = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
  cards
end

# Deal cards to player and dealer
def deal(hand, dck, cards=1)
  # select random cards
  cards.times do
    card = dck.sample
    dck.delete_at(dck.index(card))
    hand << card
  end
  hand
end

def hand_value(hand)
  hand_total = 0
  ace_count = 0
  hand.each do |val|
    hand_total += CARD_VALUES[val][0].to_i
    ace_count += 1 if val == "Ace"
  end
  if hand_total > PLAYING_TO_NUMBER && hand.include?("Ace")
    hand_total -= (10 * ace_count)
  end
  hand_total
end

def hit(hand, dck)
  deal(hand, dck)
end

def determine_winner(player_hand, dealer_hand)
  player_total = hand_value(player_hand)
  dealer_total = hand_value(dealer_hand)

  # Check if either busted
  return "dealer" if bust?(player_total)
  return "player" if bust?(dealer_total)

  winner = if player_total > dealer_total
             "player"
           elsif player_total < dealer_total
             "dealer"
           else
             "tie"
           end
  winner
end

def display_winner(winner)
  if winner == "tie"
    prompt "#{winner.capitalize} won!"
    winner.capitalize
  else
    prompt "It's a tie!"
    "tie"
  end
end

def display_both(player_hand, dealer_hand)
  puts "=============="
  prompt "Dealer hand:#{joinor(dealer_hand)}, total: #{hand_value(dealer_hand)}"
  prompt "Player hand:#{joinor(player_hand)}, total: #{hand_value(player_hand)}"
  puts "=============="
end

def joinor(array)
  arr = array.dup
  if arr.length == 2
    arr.join(" and ")
  else
    arr[-1] = "and #{arr.last}"
    arr.join(", ")
  end
end

def play_again?
  puts "-------------"
  prompt "Would you like to play again?"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# Main Game Loop
loop do
  score = { player: 0, dealer: 0 }
  loop do
    break if score.value?(5)
    system 'clear'
    deck = initialize_deck

    # Initialize the hands
    player_hand = deal([], deck, 2)
    dealer_hand = deal([], deck, 2)

    prompt "Player: #{score[:player]} || Dealer: #{score[:dealer]}"

    # # Player Turn
    loop do
      prompt "Dealer has: #{display_hand(dealer_hand, false)}"
      prompt "You have #{display_hand(player_hand)}"
      prompt "Would you like to hit or stay?"
      answer = gets.chomp
      break if answer == "stay"

      hit(player_hand, deck)
      system 'clear'
      break if bust?(hand_value(player_hand))
    end

    if bust?(hand_value(player_hand))
      prompt "You drew a #{player_hand.last} and busted!!"
      score[:dealer] += 1
      display_both(player_hand, dealer_hand)
      sleep(3)
      next
    else
      prompt "You stayed"
    end

    # Dealer Turn
    loop do
      prompt "Dealer has: #{display_hand(dealer_hand)}"
      dealer_value = hand_value(dealer_hand)
      break if dealer_value > DEALER_HITS || bust?(dealer_value)

      hit(dealer_hand, deck)
    end

    if bust?(hand_value(dealer_hand))
      prompt "Dealer busted!!"
      score[:player] += 1
      display_both(player_hand, dealer_hand)
      sleep(3)
      next
    else
      prompt "Dealer stayed"
    end

    display_both(player_hand, dealer_hand)

    winner = determine_winner(player_hand, dealer_hand)
    score[winner.to_sym] += 1 unless winner == "tie"
    display_winner(winner)

    sleep(3)

    system 'clear'
  end
  play_again? ? next : break
end
prompt "Thanks for playing Twenty-One! Bye!"
