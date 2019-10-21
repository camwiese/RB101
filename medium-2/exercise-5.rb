# Triangle sides

# Write a method that takes the length of 3 triangle sides and returns a symbol
# input: 3 ints
# output: symbol

def sides(array)
  case array.uniq.length
    when 1 then return :equilateral
    when 2 then return :isosceles
    when 3 then return :scalene
    end
end

def valid?(array)
  # Is the array valid? true if valid. false if invalid.
  check_length = array.clone.sort
  check_length.each do |val|
    return false if val == 0
  end
  return true if check_length[2] < (check_length[0] + check_length[1])
end

def triangle(side1, side2, side3)
  sides_array = [side1, side2, side3]

  unless valid?(sides_array)
    return :invalid
  else
    sides(sides_array)
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid