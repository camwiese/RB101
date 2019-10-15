def sequence(int)
  range_array = []
  (1..int).each do |num|
    range_array << num
  end
  range_array
end

# alternate
# (1..int).to_a

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]