# Input: integer
# output: integer

# definitions:
# * feature number: odd number that is a multiple of 7 AND whose digits occur exactly once each

# write a method that takes a single integer as an argument
# and returns the next featured number that is greater than the argument.

# feature number:
# * num.odd? to check if it's odd
# * num % 7 == 0 to check if divisible by 7
# * num.to_s.chars.uniq.length == num.to_s

# take the passed in number and increase it by 1 each time and check if featured


# So this is a function called featured & a loop.

def is_featured?(num)
  if !num.odd?
    return false
  elsif num % 7 != 0
    return false
  elsif num.to_s.chars.uniq.length != num.to_s.length
    return false
  else
    true
  end
end

def featured(num)
  loop do
    num += 1
    return num if is_featured?(num)

    break if num >= 9_876_543_210
  end
  "No possible number exists"
end
      
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
