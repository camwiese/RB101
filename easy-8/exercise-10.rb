def center_of(string)
  length = string.length
  middle = (length.to_f/2).floor

  if length.even?
    string[middle-1..middle]
  elsif length.odd?
    string[middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'