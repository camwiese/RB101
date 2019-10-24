# def substrings_at_start(string)
#   new_array = []
#   string.chars.each_with_index do |char,index|
#     new_array << string.chars[0..index].inject(:+)
#   end
#   new_array
# end



# input: string
# output: array 

# Algo:
# Take the string and split it into characters
# loop through the array of characters
# store character up to the current index value into a new array (0..0), (0..1), etc.
# return the array


def substrings_at_start(string)
  results = []

  string.chars.each_with_index do |char, index|
    results << string.chars[0..index].inject(:+)
  end
  results
end

p substrings_at_start('abc') 
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
