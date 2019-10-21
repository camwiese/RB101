def mexican_wave(string)
  length = string.length

  counter = 0

  capitalized_array = []

  length.times do
    sub_array = []
    string.chars.each do |word|
      sub_array << word
    end

    sub_array[counter].upcase!
    capitalized_array << sub_array.join
    counter += 1
  end
  capitalized_array.flatten
end


def wave(string)
  output = []
  string.split.each_with_index do |char, index|
    output.push(string.slice(0, index) + char.upcase! + string.slice(index+1))
  end
  output
end

wave("hello goodye23")



mexican_wave("hello") 
# == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p mexican_wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p mexican_wave("") == []
p mexican_wave("two words")