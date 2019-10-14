def multiply_list(arr1, arr2)
  new_array = []

  arr1.each_with_index do |_, index|
    new_array << (arr1[index] * arr2[index])
  end
  new_array
end


# 1 liner
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|arr| arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])