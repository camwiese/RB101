# def interleave(arr1, arr2)
#   new_arr = []

#   counter = 0
#   loop do 
#     break if counter >= arr1.length
#     new_arr << arr1[counter]
#     new_arr << arr2[counter]
#     counter += 1
#   end
#   new_arr
# end


# Pass 2

# def interleave(arr1, arr2)
#   output = arr1.zip(arr2).flatten
# end

# pass 3

def interleave(arr1, arr2)
  output = []
  arr1.each_with_index do |elem, index|
    output << elem << arr2[index]
  end
  output
end



p interleave([1, 2, 3], ['a', 'b', 'c'])