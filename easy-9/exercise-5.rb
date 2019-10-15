def uppercase?(string)
  string.chars.each do |char|
    return false if char != char.upcase
  end
  true
end

# alt: string == string.upcase


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true