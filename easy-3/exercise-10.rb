def palindromic_number?(number)
  number..reverse == number.to_s
  p number.to_s.reverse
end

p palindromic_number?(003454300) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true