#Easy #1 — Repeat yourself
#Write a method that takes two arguments, 
# a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, count)
  if count <= 0
    puts "please enter a positive number"
  end
  count.times do
    puts string
  end
end

repeat("hello", -3)
repeat("what up", 12)

