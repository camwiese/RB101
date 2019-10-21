# wrtie a method that returns the number of friday the 13ths in a given year

# input: integer (year)
# output: integer (number of friday the 13ths)


# question: how many friday the 13ths appear in a year?
# assume: greater than 1752

# Details:
# Any month starting with sunday will have a friday the 13th
# At most this will happen 3 times a year

# using the date library get the starting date of each month (12 times)
# if starting day is sunday, then += f13 count

require 'date'

def friday_13th(date)
  friday_count = 0

  (12).times do |num|
    if DateTime.new(date,num+1,13).friday?
      friday_count += 1
    end
  end
  friday_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2