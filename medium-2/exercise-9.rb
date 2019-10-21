# Bubble Sort

# Write a method that bubble sorts an array

# Makes multiple passes on an array. Each pair of values is compared. If 
# the first is greater than the second, then they switch.

# input: array
# output: sorted array

# we're going to loop through the array.
# we're going to compare each value with the one before it 

# loop do 
#   while sorted == true
# array.each_with_index
# Check the values [0] and [1]. 
# If [0] > [1]
#   array[0],array[1] = array[1], array[0]

def bubble_sort!(array)

  compare_array = []

  loop do
    array.each_with_index do |num, index|
      break if (array[index + 1]) == nil
      if array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
      end
    end

    return array if compare_array == array
    compare_array = array.clone
  end
  array
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)


