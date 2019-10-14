def substrings_at_start(string)
  new_array = []
  string.chars.each_with_index do |char,index|
    new_array << string.chars[0..index].inject(:+)
  end
  new_array
end

def substrings(string)
  new_array = []
  
  string.length.times do
    new_array << substrings_at_start(string)
    string.slice!(0)
  end

  new_array.flatten
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]