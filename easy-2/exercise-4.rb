
puts "What's your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_retire = (retirement_age - age)
retirement_year = years_to_retire + Time.now.year

puts "It's #{Time.now.year}. You will retire in #{retirement_year}"
puts "You only have #{years_to_retire} of work to go!"
