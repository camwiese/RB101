# Apprach
=begin 
Write a method that takes an array of strings and returns an array of the same string values except with the string vowels removed

Inputs: array of strings
Outputs: array of strings without vowels

Approach
* Define an array of vowels
* Define a new array
* Loop through array and extract the words
* Loop through the words
* Compare each string with the vowels array
* If the string element is not in the vowels array, add to new array
* return new array

=end

def remove_vowels(array)
  new_array = []
  array.each do |word|
    vowels = %w(a e i o u)
    new_word = []
    word.each_char do |char|
      if vowels.include?(char.downcase) == false
        new_word << char
      end
    end
    new_array << new_word.join('')
  end
  new_array
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


def remove_vowels(strings)
  strings.map {|string| string.delete('aeiouAEIOU')}
end