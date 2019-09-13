# def xor?(n1,n2)
#   if n1 == true && n2 == false
#     true
#   elsif n1 == false && n2 == true
#     true
#   else
#     false
#   end
# end

# alternate:
def xor?(val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
  false
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

