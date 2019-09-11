# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

#easy mode with loop
def sum(number)
  count = 0
  split = number.to_s.split('')
  split.each do |num|
    # num = num.to_i
    # count = count + num
    count += num.to_i
  end
  count
end

#hard mode w/ no loop
# def sum(number)
#   split = number.to_s.split('')
#   split.map(&:to_i).reduce(:+)
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end