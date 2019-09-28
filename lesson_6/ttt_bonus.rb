array = [1, 2, 3, 4, 5, 10, 100, 1000]


def joinor(array, delim=", ", word="or")
  output = ''
  if array.length == 2
    output = "#{array[0]} or #{array[1]}"
  else
    array.each_with_index do |num, idx|
      idx < array.length-1 ? (output += "#{num}" + "#{delim}") : output += "#{word} #{num}"
    end
  end
  output
end

#  launch school version
# def joinor(arr, delim=' , ', word="or")
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delim)
#   end


p joinor(array)    
p joinor([1,2])               # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"