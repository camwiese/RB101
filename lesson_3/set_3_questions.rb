# Question 1
# 10.times {|number| puts (" " * number) + "The Flintsones Rock!"}

# Question 2
# puts "the value of 40 + 2 is " + (40 + 2).to_s
# # alt
# puts "the value of 40 + 2 is #{40 + 2}"

# Question 3
# def factors(number)
#   divisor = number
#   factors = []

#   (1..divisor).each do |divisor|
#     factors << number / divisor if number % divisor == 0
#   end
#   factors.reverse!

#   # alternative
#   # while divisor > 0 do
#   #   factors << number / divisor if number % divisor == 0
#   #   divisor -= 1
#   # end
# end

# p factors(10)

# Question 4
# One mutates the array and the other does not

# Question 5
# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"

# Question 6
# answer = 42

# def mess_with_it(number)
#   number += 8
# end

# new_answer = mess_with_it(answer)
# p answer - 8

# Question 7
# No, becuase it's not mutating...?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# p munsters
# p "---"
# p mess_with_demographics(munsters)
# p "---"
# p munsters

# Question 8

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# Question 9
# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# p bar(foo)


