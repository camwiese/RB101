require 'pry'

# Name => [value, count]
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
  "Ace" => [[1,11]]
}

def prompt(msg)
  puts "=> #{msg}"
end

# Supporting Methods
def bust?(hand_value)
  hand_value > 21
end

# Initialize Deck
def initialize_deck
  cards = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace) +
          %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
  cards
end

deck = initialize_deck

# Deal cards to player and dealer
def deal_cards(dck)
  deal_player(dck, 2)
  deal_dealer(dck, 2)
end

def deal_player(hand, dck, cards=1)
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
  hand.each do |val|
    if val == "Ace" # => Fix this logic
      hand_total += 11
    else
      hand_total += CARD_VALUES[val][0].to_i
    end
  end
  hand_total
end

def hit(hand, dck)
  deal_player(hand, dck)
end

hand = deal_player([], deck, 2)

# # Player Turn
# loop do
#   prompt "Your hand is #{hand}"
#   prompt "Would you like to hit or stay?"
#   answer = gets.chomp
#   break if answer == "stay" || bust?(hand_value(hand))

#   hit(hand, deck)
# end

# if bust?(hand_value(hand))
#   prompt "You busted!!"
# else
#   puts "You stayed"
# end

# Dealer Turn
loop do 
  prompt "Dealer turn"
  p hand
  break if hand_value(hand) > 17 || bust?(hand_value(hand))
  hit(hand, deck)
end

if bust?(hand_value(hand))
  prompt "Dealer busted!!"
else
  puts "Dealer stayed"
end

def determine_winner(player_hand, dealer_hand)
  return "player" if player_hard > dealer_hand
  return "dealer" if dealer_hand > player_hand
end

def display_winner(winner)
  puts "#{winner.capitalize} won!"
end

display_winner(determine_winner(player_hand, dealer_hand))



# Show the cards
# Dealer has N and unknown card
# You have: Jack and 6
def display_hand(player_hand, dealer_hand)
  puts "Dealer has: #{dealer_hand-1} and unknown"
  puts "You have: #{player_hand}"
end


# Set the value of the hands 

# Player Turn



# Dealer Turn
# loop do
# Check value. break if bust?(value)
# if < 17, hit. else, stay. 
# end


# Compare Values
# def determine_winner(player_hand, dealer_hand)
# return "player" if player_hard > dealer_hand
# return "dealer" if dealer_hand > player_hand

# Display winner

