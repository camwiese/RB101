# Easy 2 — Exercise 2
# How big is the room

CT_TO_SQ_FT = 929.03

puts "Please enter length in feet"
length = gets.chomp.to_i

puts "Please enter width in feet"
width = gets.chomp.to_i

p sq_ft = length * width
p sq_inches = (length * 12) * (width * 12)
p sq_cent = sq_ft * CT_TO_SQ_FT

puts "Square feet: #{sq_ft}"
puts "Square inches: #{sq_inches}"
puts "Square centimeters: #{sq_cent}"


