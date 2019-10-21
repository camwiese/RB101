def string_sort(string)

  output_array = []

  string.split.each do |word|
    word.chars.each do |char|
      if char.to_i > 0
        output_array[char.to_i] << word
      end
    end
  end 
  output_array.join()
end

p string_sort("is2 Thi1s T4est 3a")


wave("hello) == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]


result = ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
Test.assert_equals(wave("codewars"), result, "Should return: '#{result}'")

result = []
Test.assert_equals(wave(""), result, "Should return: '#{result}'")

result = ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
Test.assert_equals(wave("two words"), result, "Should return: '#{result}'")

result = [" Gap ", " gAp ", " gaP "]
Test.assert_equals(wave(" gap "), result, "Should return: '#{result}'")