# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do 
#   current_char = alphabet[counter]

#   if current_char == 'g'
#     selected_chars << current_char
#   end

#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars

# fruits = ['apple','banana','pear']
# transformed_elements = []
# counter = 0

# loop do 
#   current_element = fruits[counter]

#   transformed_elements << current_element + 's'

#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_elements

# def select_vowels(str)
#   selected_chars = ''
#   counter = 0

#   loop do 
#     current_char = str[counter]

#     if 'aeiouAEIOU'.include?(current_char)
#     selected_chars << current_char
#     end

#     counter += 1
#     break if counter == str.size
#   end

#   selected_chars
# end

# p select_vowels('the quick brown fox').size

# produce_array = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce)
#   fruit = {}
#   types_of_produce = produce.keys
#   counter = 0

#   loop do
#     break if counter == types_of_produce.size

#     current_key = types_of_produce[counter]

#     current_value = produce[current_key]
    
#     if current_value == 'Fruit'
#       fruit[current_key] = current_value
#     end
#     counter += 1
#   end
#   fruit
# end

# p select_fruit(produce_array)

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)
p my_numbers
