# Input: Two arrays
# Output: New array composed of the elements of the input arrays

# Rules:
# * No duplication of values in the returned array. 

# Algorithm:
# * Define the method with array params
# * Initialize the output array
# * Loop throug the first array adding the elements to the output array
# * Loop through the second array, adding the elements to the output array
#   * Check if the element value exists in the new array. If so, skip.
# * Return the output array. 


# Tests:
# merge([1, 3, 5, 6, 6, 10], [3, 6, 9]) == [1, 3, 5, 6, 9, 10]
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

def exists?(number, array)
  array.include?(number)
end

def merge(arr1, arr2)
  output_array = []

  arr1.each do |element|
    if !exists?(element, output_array)
      output_array << element
    end
  end
  arr2.each do |element|
    if !exists?(element, output_array)
      output_array << element
    end
  end

  output_array.sort
end 


p merge([1, 3, 5, 6, 6, 10], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
