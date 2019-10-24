require 'pry'


def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

def neutralize(sentence)
  words = sentence.split(' ')
  array = words.select do |word|
            !negative?(word)
          end

  array.join(' ')
end
puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.