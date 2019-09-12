# Easy 2 — Exercise 2
# How big is the room

puts "Please enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Please enter the width of the room in meters:"
width = gets.chomp.to_i

puts "The area of the room is #{length * width} square meters (#{length * width * 10.7639} sq feet!)"
