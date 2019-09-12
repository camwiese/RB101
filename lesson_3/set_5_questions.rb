
def is_an_ip_number(number)
  number.to_i >= 0 && number.to_i <= 255
end

def dot_separated_ip_address?(string)
  ip_array = string.split(".")

  if ip_array.length != 4
    return false
  end

  ip_array.each do |value|
    return false unless is_an_ip_number(value)
  end

  return true
end

p dot_separated_ip_address?("121.35.12.111") ==  true
p dot_separated_ip_address?("0.0.0.0") ==  true
p dot_separated_ip_address?("255.255.255.255") ==  true
p dot_separated_ip_address?("12.12.111") ==  false
p dot_separated_ip_address?("0") ==  false


