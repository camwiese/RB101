# Clean up the words

# input: a dirty string
# output: a clean string

# replace all non alphabetical characters with spaces

# break the string into individual bits
# iterate through the bits
# check to see if a character is valid (method)
# if the character is valid, return the character



ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def cleanup(string)
  cleaned = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      cleaned << char
    else
      cleaned << ' ' unless cleaned.last == ' '
    end
  end

  cleaned.join('')
end

p cleanup("---what's my +*& line?")
