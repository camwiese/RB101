# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# counter = 0
# hash = {}

# loop do
#   break if counter == flintstones.length

#   hash[flintstones[counter]] = counter
#   counter += 1
# end

# p hash

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# sum_age = 0

# ages.each do |name, age|
#   sum_age += age
# end
# # ages.each {|name,age| sum_age += age}

# youth = ages.select!{|name, age| age.to_i < 100}
# p youth

# p ages.values.min


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |name, index|
#   puts index if name.start_with?("Be")
# end

# p flintstones.index {|name| name[0,2] == "Be"}

# p flintstones.map! {|name| name[0..2]}

# statement = "The Flintstones Rock"
# output_hash = Hash.new 0

# statement.chars.each do |letter|
#   output_hash[letter] += 1
# end

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end
# p result
# p output_hash

# numbers = [1,2,3,4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
# p numbers

# words = "the flintstones rock"

# list = words.split
# list.each do |word|
#   word.capitalize!
# end

# p list.join(' ')

# list.each do |word|
#   word = word[0].upcase!
# end

# p words

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



munsters.each do |key, value|
  age = munsters[key]["age"]
  if age > 64
    munsters[key]["age_group"] = 'senior'
  elsif age > 18
    munsters[key]["age_group"] = 'adult'
  else
    munsters[key]["age_group"] = 'kid'
  end
  munsters
end

p munsters




