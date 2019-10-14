def substrings_at_start(string)
  new_array = []
  string.chars.each_with_index do |char,index|
    new_array << string.chars[0..index].inject(:+)
  end
  new_array
end

p substrings_at_start('abc') 
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']