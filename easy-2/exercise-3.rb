puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip = bill * (tip / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is #{tip}"
puts "The total is #{total}"