def word_lengths(string)
  words = []
  string.split(' ').each do |word|
    words << "#{word} #{word.length}"
  end

  words
end

# alternative
# word + ' ' + word.length.to_s


# altern. 2
# string.split.map { |word| "#{word} #{word.length}"}

p word_lengths("cow sheep chicken")

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
