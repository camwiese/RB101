def fizzbuzz?(num)
  if num % 3 == 0 && num % 5 == 0
    'Fizzbuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num
  end 
end


def fizzbuzz(first, last)
  output_array = []
  (first..last).each do |num|
    output_array << fizzbuzz?(num)
  end
  output_array.join(', ')
end


p fizzbuzz(1,15)