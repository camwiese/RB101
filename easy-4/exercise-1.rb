def short_long_short(s1,s2)
  if s1.length < s2.length
    s1+s2+s1
  else
    s2+s1+s2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"