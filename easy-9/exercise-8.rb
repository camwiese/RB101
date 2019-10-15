def sequence(count, starting_number)
  range = []
  counter = 1
  count.times do
    range << starting_number * counter
    counter +=1
  end 
  range
end

# alternate
# (1..count).map { |value| value * starting_number}

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
p sequence(8, 3)