require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)


def win?(first, second)
  # define the winning moves class here intead of using an instance variable
  winning_moves = {
  "rock" => ["lizard", "scissors"], 
  "paper" => ["rock", "spock"],
  "scissors" => ["lizard","paper"],
  "lizard" => ["paper","spock"],
  "spock" => ["rock", "scissors"]
}
  winning_moves[first].include? second
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won")
  else
    prompt("It's a tie")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

# main loop

loop do
  choice = ''
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

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing! Bye!")
