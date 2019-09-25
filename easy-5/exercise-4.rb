# Letter Swap

# Input: a string of words, seperated by spaces
# output = a string of words(flipped), spearated byspaces

# Process:
# *Break up the string into an array of words. 
# *Loop through each word
# *Flip the first and last character of each word
# *Return the array
# * Join the elements in the array to return a string


# def swap(string)
#   array = string.split(' ')

#   array.map do |word|
#     length = word.size
#     if length > 1
#       word[0], word[length-1] = word[length-1], word[0]
#     end
#   end
#   array.join(' ')
# end

#launch school way:

def swap_chars(word)
  word[0], word[-1] = word[-1],word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_chars(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'