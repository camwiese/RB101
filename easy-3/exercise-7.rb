array = [1, 2, 3, 4, 5]

def oddities(array)
  new_array = []
  index = 0
  while index < array.length
    new_array << array[index]
    index +=2
  end
  new_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

