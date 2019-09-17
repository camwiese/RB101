# take a string and convert it to a number


DIGITS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def str_to_int(string)
  digits = string.chars.map {|char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = 10 * value + digit}
  value
end

def string_to_signed_integer(string)
  sign = string.chars.first
  value = str_to_int(string)
  if sign == "-"
    -1 * value
  elsif sign == "+"
    1 * value
  else
    value
  end
end



string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100