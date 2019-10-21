
# Given the string of chars a..z A..Z do as in the sample cases


def accum(string)
  string_array = string.chars

  result = []
  string_array.each_with_index do |char, index|
    result << char * (1 + index)
    result[index].capitalize!
  end
  result.join("-")
end


p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"