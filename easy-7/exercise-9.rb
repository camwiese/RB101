arr1 = [2, 4]
arr2 = [4, 3, 1, 2]

def multiply_all_pairs(arr1, arr2)
  multiplied_values = []
  arr1.each do |num|
    arr2.each do |num2|
      multiplied_values << num * num2
    end
  end
  multiplied_values.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]