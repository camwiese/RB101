def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to the Mortgage Calculator!")
  prompt("-----------------------------------")

  prompt("What is the loan amount?")

  amount = ''
  loop do
    amount = Kernel.gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt("Please enter a positive number")
    else
      break
    end
  end

  prompt("What's the interest rate?")
  prompt("(Example: 10 for 10% or 7.5 for 7.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Please enter a positive number")
    else
      break
    end
  end

  prompt("What's the loan duration in years?")

  years = ''
  loop do
    years = Kernel.gets.chomp

    if years.empty? || years.to_i < 0
      prompt("Please enter a valid number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f *
                    monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")
  prompt("Calculate again?")
  answer = Kernel.gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using the mortgage calculator")
prompt("See ya!")
