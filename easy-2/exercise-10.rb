array1 = %w(Cam Joe Jack)
array2 = []
p array1.each {|value| array2 << value}
p array1.each { |value| value.upcase! if value.start_with?('C')}

p array2