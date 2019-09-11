VALID_CHOICES = %w(rock paper scissors lizard spock)

choice = 'r'

# if the choice was not valid, we check if it's a letter
#   that letter is passed to a method that sets matches the letter to the og key
#   the original key is returned 

def validate_choice(input)
  case input
  when 'r'
    output = "rock"
    choice = "rock"
    puts "this is rock"
    puts output
    puts choice
    return true
  when 's'
    output =  "scissors"
  when 'sp'
    choice = 'spock'
  when 'l'
    choice = 'lizard'
  when 'p'
    choice = 'paper'
  end
end

output = ''

puts "Choose one: rock, paper, scissors, lizard, spock"
if VALID_CHOICES.include?(choice)
  puts "Original input was valid"
elsif validate_choice(choice)
  p validate_choice(choice)
  p 
else
  puts "please enter a valid input"
end
