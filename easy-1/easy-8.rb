# Easy 8 — Array Average
# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.
def average(array)
  average = 0
  array.each do |num|
    average = average + num
  end
  (average / array.length).to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


# Launch school simplified this method:
def averageLaunchSchool(numbers)
  sum = numbers.reduce(:+)
  (sum / numbers.count).to_f
end

p averageLaunchSchool([1, 5, 87, 45, 8, 8])


