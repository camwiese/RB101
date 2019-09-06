def prompt(message)
  puts("=>#{message}")
end

def convert_apr(apr)
  apr.to_f / 100 / 12
end

def convert_length(years)
  years.to_i * 12
end

def interest_rate(amount, apr, length)
  amount * (apr / (1 - (1 + apr)**(-length)))
end

# similar to the other program, let's greet the user.

prompt("Welcome to the calculator. Enter your name:")
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Please enter your name")
  else
    prompt("Hey, #{name}")
    break
  end
end

prompt("Today we're going to calculate your monthly loan payments")

loan_amount = ''
loop do
  prompt("Please enter the loan amount")
  loan_amount = gets.chomp.to_f
  break if loan_amount > 0
end

apr = ''
loop do
  prompt("How much is the annual interest rate (APR)? (e.g. 5)")
  apr = gets.chomp.to_f
  puts "Your annual interest is #{apr}%, is that correct? (yes or no)"
  answer = gets.chomp
  break if answer.downcase.start_with?('y')
end

loan_term_years = ''
loop do
  prompt("How long is your loan for? (in years)")
  loan_term_years = gets.chomp.to_i
  break if loan_term_years > 0
end

prompt("Hold on. Doing some calculating...")
monthly_rate = convert_apr(apr)
loan_length = convert_length(loan_term_years)

p "Your monthly payments are:"
p "$#{interest_rate(loan_amount, monthly_rate, loan_length)}"
