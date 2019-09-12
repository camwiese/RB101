# Easy 2 — Exercise 1 
#How old is Teddy?

age = rand(20..200)
puts "What's your name?"
name = gets.chomp
if name.empty?
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old"
end