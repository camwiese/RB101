def find_fibonacci_index_by_length(integer)
  counter = 0 
  array = [1,1]
  loop do
    sum = array[counter] + array[counter + 1]
    array << sum

    if sum.to_s.length == integer
      return counter + 3
    end

    counter +=1
  end
end 

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847