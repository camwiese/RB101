def century(year)
  value = 0
  if year <= 0
    return
  elsif year < 100
    value = 1
  elsif year % 100 == 0
    value = year / 100
  else
    value = ((year.to_f / 100) + 1).floor
  end
  p value
  ordinal(value) # A two digit number
end
# method that returns the ordinal

def ordinal(value)
  if value > 10 && value < 19
    value.to_s + "th"
  else
    last_number = value.digits.first
    case last_number
    when 1
      value.to_s + "st"
    when 2
      value.to_s + "nd"
    when 3
      value.to_s + "rd"
    else
      value.to_s + "th"
    end
  end
end

## Launch School Answer:
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return "th" if [11,12,13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
