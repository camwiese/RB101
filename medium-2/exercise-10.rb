# sum sq sq sum

# method that ocmputer the difference between the square of the sum of the first n positive integers and the sum of the quares

# input: integer
# output: integer

# calculate the algo to get the square of the sum
# calculate the sum of squares
def sum_square_difference(int)
  sq_sums = ((1..int).reduce(:+) * (1..int).reduce(:+))
  sum_sqs = (1..int).reduce {|square, num| square + (num * num)}
  sq_sums - sum_sqs
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
