def halvsies(array)
  output = [[],[]]
  array.each_with_index do |num, index|
    index < (array.length / 2.0).ceil ?  output[0] << num : output[1] << num
  end
  output
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]