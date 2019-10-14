def swap(char)
  if ("A".."Z").include?(char)
    char.downcase!
  elsif ("a".."z").include?(char)
    char.upcase!
  else
    char
  end
end

def swapcase(string)
  output = string.chars.map do |char|
            swap(char)
          end
  output.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'