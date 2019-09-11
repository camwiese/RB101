#Easy #2 — Odd
# Write a method that takes one integer argument, 
# which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.

def odd(int)
  int % 2 == 1
end

#tests
p odd(12) # false
p odd(11) # true
p odd(-3) # true
p odd(0) # false