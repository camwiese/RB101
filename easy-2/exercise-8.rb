def sum(integer)
  (1..integer).reduce(:+)
end

def product(integer)
  (1..integer).reduce(1, :*)
end

puts "Please enter an integer great than 0"
input = gets.chomp.to_i

puts "Enter 's' to computer the sum, 'p' to compute the product"
option = gets.chomp.to_s

p sum(input) if option == "s"
p product(input) if option == "p"

