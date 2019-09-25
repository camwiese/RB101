# Modify word sizes to not count non alphabetical charcaters. 

# This means for each word, I'll need to check the characters for each

# for each "word" that I pass to the block
#   Check each character to see if non-letters exist
#   return the number of letters as the length of the word (size)

ALPHABET = ('a'..'z').to_a

def word_sizes(string)
  sizes = {}
  string.split.each do |word|
    size = word.chars.select do |char|
      ALPHABET.include?(char.downcase)
    end

    if sizes.has_key?(size.length)
      sizes[size.length] += 1
    else
      sizes[size.length] = 1
    end
  end
  sizes
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}


def word_sizes(word_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end