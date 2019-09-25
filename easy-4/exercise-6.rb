## running totals
=begin

input: array
output: array

Problem
* Given an array of numbers, return an array with the same number of elements with the running total

Loop through an array
add each element to the element before it. 
[1,2,3] => [1,3,6]
Since I'll be transforming the array, I may want to map. 
Each iteration requires knowing the previous number.. so I may need to store the numbers

Notes:
The first item is the original number

  
=end

def running_total(old_array)
  counter = 0
  new_array = []
  loop do 
    break if counter >= old_array.length
    if counter == 0
      new_array[counter] = old_array[counter]
    else 
      new_array[counter] = old_array[counter] + new_array[counter-1]
    end
    counter += 1
  end
  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
