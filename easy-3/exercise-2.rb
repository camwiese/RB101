puts "Please enter first number:"
first = gets.chomp.to_f

puts "Please enter second number"
second = gets.chomp.to_f

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{(first / second).round(2)}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first**second}"
