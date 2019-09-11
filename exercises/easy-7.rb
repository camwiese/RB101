# Easy 7 — Stringy Strings

#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
#always starting with 1. The length of the string should match the given integer.

def stringy(int, base=1)
  iteration = base
  string = ''
  int.times do
    string += iteration.to_s
    if iteration == 1
      iteration = 0
    else
      iteration = 1
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

