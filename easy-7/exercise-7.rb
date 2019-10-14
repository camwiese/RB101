def show_multiplicative_average(array)
  total = array.reduce(:*)
  p "The result is #{(total.to_f / array.length).round(3)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
