def word_to_digit(string)
  string.split('').each do |word|
    case word

    when "one" then string.sub!("one", "1")
    when "two" then string.sub!("two", "2")
    when "three" then string.sub!("three","3")
    when "four" then string.sub!("four", "4")
    when "five" then string.sub!("five", "5")
    when "six" then string.sub!("six", "6")
    when "seven" then string.sub!("seven", "7")
    when "eight" then string.sub!("eight", "8")
    when "nine" then string.sub!("nine", "9")
    when "zero" then string.sub!("zero", "0")
    end
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')