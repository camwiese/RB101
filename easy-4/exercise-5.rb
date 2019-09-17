  def multisum(num)
   array = []

   (1..num).each do |number|
    if number % 3.0 == 0
      array << number
    elsif number % 5 == 0
      array << number
    end
  end
  array.reduce(0,:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168