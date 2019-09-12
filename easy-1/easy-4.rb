# Easy 4 — How Many
# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

#store each element as a key in a hash
#store the count of the element as a value
def count_items(array)
  occur = {}

  array.each do |item|
    item.downcase! # Forcing downcase of all items for equality — super hacky
    occur[item] = array.count(item)
  end

  occur.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_items(vehicles)



