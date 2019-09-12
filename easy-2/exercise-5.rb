puts "Hi. What is your name?"
name = gets.chomp
if name.split(//).last() == "!"
  puts "HELLO #{name.upcase} WHY ARE WE SCREAMING"
else
  puts "Hello #{name}"
end
