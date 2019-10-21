# classification of triangles

# input: 3 angles
# output: type of triangle

# create a case statement to evaluate the angle
#   use an array and then get the max value.

# right = one angle = 90
# actue = all angles < 90
# obtuse = one angle < 90

# to be valid, all sides must total 180 degrees and be greater than 0

# create a method to detect validity



def valid?(array)
  array.include?(0) || array.sum != 180
end

def triangle(angle1,angle2,angle3)
  array = [angle1, angle2, angle3]
  return :invalid if valid?(array)
  
  if array.max == 90
    return :right
  elsif array.max > 90
    return :obtuse
  else
    return :acute
  end
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
