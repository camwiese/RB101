# Easy 5 — Reverse it P1
#struggle: needed to look up the reverse method while offline. Had to look.


p "Cam is Cool".split(' ').reverse.join(' ')

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'