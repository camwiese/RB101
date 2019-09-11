require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

def win?(first, second)
  winning_moves = {
  "rock" => ["lizard", "scissors"], 
  "paper" => ["rock", "spock"],
  "scissors" => ["lizard","paper"],
  "lizard" => ["paper","spock"],
  "spock" => ["rock", "scissors"]
  }

  winning_moves[first].include?(second)

end

def return_results(player, computer)
  if win?(player, computer)
    return "player"
  elsif win?(computer, player)
    return "computer"
  else
    return "draw"
  end
end

def score(winner)
  if (winner == "player")
    player_score += 1
    prompt("You won!")
  elsif (winner == "computer")
    computer_score += 1
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end


def prompt(message)
  Kernel.puts("=> #{message}")
end

# Set score
player_score = 0
computer_score = 0

# Game Loop
loop do
  choice = ''

  # Grab & validate User Input
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("please enter a valid input")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose #{choice}; Computer chose #{computer_choice}")

  results = return_results(choice, computer_choice)

  binding.pry
  score(results)

  prompt("Score:")
  prompt("Computer: #{computer_score}")
  prompt("Player: #{player_score}")
  prompt("---------------------")

  if computer_score >= 5 || player_score >= 5
    prompt("That's game!")
    prompt("Do you want to play again?")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
    # Reset the counter if the user wants to play again.
    computer_score = 0
    player_score = 0
  end
end

prompt("Thanks for playing! Bye!")
