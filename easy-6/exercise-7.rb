# input array
# output nested array of two arrays


# take array
# split the array in half
# store the first half in an array
# store the second half in an array
# return the array

# rules:
# an empty array should return two empty arrays
# a single element array should return an empty array and a single element array
# with an odd number of elements, return the middle element should be placed in the first half


array = [1,2,3,4,5,6]

p array.length % 2
length = array.length
new_array = []
if length % 2 == 0
  (length / 2).times do 
    new_array << array.shift 
  end
end

p array
p new_array




# p array.size / 2
# new_array = array.take(2)
# p new_array
# p array

# output = [new_array,[]]
# p output
