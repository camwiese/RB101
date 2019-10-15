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



p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917