def rotate_array(array)
  new_array = array.clone
  last = new_array.shift
  new_array << last
end

def rotate_rightmost_digits(integer, count)
  chars = integer.to_s.chars
  chars << rotate_array(chars.pop(count))
  chars.join.to_i
end


def max_rotation(integer)
  counter = integer.to_s.length
  new_string = integer

  loop do 
    break if counter <= 1
    new_string = rotate_rightmost_digits(new_string, counter)
    counter -= 1
  end
  new_string
end


p max_rotation(735291)
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845