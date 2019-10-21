def mexican_wave(string)
  hash = {}
  counter = 1
  string.size.times do 
    hash[counter] = [string]
    counter += 1
  end

  count = 0
  hash.values.each do |sub_arr|
    sub_arr.each do |word|
      loop do
        p word[count].upcase!
        word[count].capitalize!
        new_hash = [:count => word]
        count += 1
        break
      end
    end
  end
p hash
end

mexican_wave("hello")