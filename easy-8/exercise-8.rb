CONSTANTS = %w(b c d f g h j k l m n p q r s t v w x y z)


def double_consonants(string)
  output = string.chars.map! do |char|
            if CONSTANTS.include?(char.downcase)
              char * 2
            else
              char
            end
          end
  output.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""