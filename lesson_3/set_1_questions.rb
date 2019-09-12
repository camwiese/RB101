# Programmatically determine if 42 lies between 10 and 100.
#Exercise 5
# p (10..100).include? (42)

#Exercise 6
# famous_words = "seven years ago..."
# # p famous_words = "Four score and " + famous_words
# p famous_words.prepend("Four score and ")

#exercise 7
# def add_eight(number)
#   number + 8
# end

# number = 2

# how_deep = "number"

# 5.times { how_deep.gsub!("number", "add_eight(number)")}

# p how_deep
# eval(how_deep)

#exercise 8
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbbles"]

# # one solution:
# # flintstones.append("Barney", "Betty")
# # flintstones.append("BamBam", "Pebbbles")

# #another
# flintstones.flatten!

# p flintstones

# exercise 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones_new = []

flintstones.each do |key,value|
  if key == "Barney"
    flintstones_new.append(key,value)
  end
end

p flintstones_new
# actual answer: flintstone.assoc("Barney") :upside_down_smiley:








