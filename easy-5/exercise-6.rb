# Letter counter
# *Break the string into an array of words
# * Loop through the array of words and grab the size
# * Create a new array value or increment the hash value 
# * Output hte array


def word_sizes(string)
  sizes = {}
  string.split.each do |word|
    size = word.length
    if sizes.has_key?(size)
      sizes[size] += 1
    else
      sizes[size] = 1
    end
  end
  sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

