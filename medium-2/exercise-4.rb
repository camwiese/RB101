# Matching Parans

# Input: String
# output: boolean


# Take the string and break it into characters

def balanced?(string)
  count = 0

  string.chars.each do |char|
    count += 1 if char == "("
    count -= 1 if char == ")"

    return false if count < 0
  end

  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false