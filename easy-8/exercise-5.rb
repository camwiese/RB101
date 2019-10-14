def substrings_at_start(string)
  new_array = []
  string.chars.each_with_index do |char,index|
    new_array << string.chars[0..index].inject(:+)
  end
  new_array
end

def substrings(string)
  new_array = []
  
  string.length.times do
    new_array << substrings_at_start(string)
    string.slice!(0)
  end

  new_array.flatten
end

def palindromes(string)
  palindromes = []
  substrings = substrings(string)
  substrings.each do |string|
    palindromes << string if string == string.reverse && string.length > 1
  end
  palindromes
end



p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]