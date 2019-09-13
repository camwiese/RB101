
word = "house"
word2 = "madam"

def palindrome?(obj)
  obj == obj.reverse
end

array = ['cam', 'house', 'house','cam']
p array
p array.reverse

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true