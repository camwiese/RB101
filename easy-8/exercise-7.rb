def repeater(string)
  output = string.chars.map! do |char|
            char*2
          end
  output.join('')
end

p repeater('Hello')
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''