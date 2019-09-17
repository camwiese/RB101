
def running_total(array)
  new_array = []
  array.each_with_index do |number,index|
    if index == 0
      new_array << number
    else
      new_array << number + new_array[index-1]
    end
  end
  new_array
end

# Launchschool answer is simplified:

def running_total(array)
  sum = 0
  array.map {|value| sum += value}
end

