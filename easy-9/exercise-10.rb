def buy_fruit(array)
  list = []
  array.each do |item|
    item[1].times do
      list << item[0]
    end
  end

  list
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]