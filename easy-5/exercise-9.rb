def crunch(string)
  #store the cleaned words into an array
  cleaned_word = []

  # If I do this, I don't need to break it down into individual words =D
  string.chars.each {|char| cleaned_word << char unless char == cleaned_word.last}
  # string.split.each do |word|
  #   cleaned_chars = []

  #   word.chars.each do |char|
  #     cleaned_chars << char unless cleaned_chars.last == char
  #   end
  #   cleaned_word << cleaned_chars.join
  # end
  cleaned_word.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


#launch school answer

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length-1
#     crunch_text << text[index] unless text[index] == text[index+1]
#     index += 1
#   end
#   crunch_text
# end