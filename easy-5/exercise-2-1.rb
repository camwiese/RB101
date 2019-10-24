# After Midnight

# Time of day can be represented as the number of minutes before or after midnight. 
# If the number is positive, time is after midnight. 
# If the number is negative, the time is before midnight.

# input: integer in minutes
# output: time of day in military time.

# Algorithm:
# There are 60 minutes in an hour and 24 hours in a day. 
# Need to take the input and convert it to hours & minutes
# Then if the number is positive, add it to 0 (-)


# Boundaries:
# any number given less than 59 will be reflected in minutes
# Any number over 60 will be divided by 60

# hours = minutes / 60
# minutes = minutes % 60

# if int < 1 then 
#   24 - hours
#   60 - minutes
#   concat

# Once I have the numbers, how do I convert into the right string?

# if number is less than 10
#   "0+#{hour}:0""

def time_of_day(int)
  minutes = int % 1440
  hours, minutes = minutes.divmod(60)
  format('%02d:%02d', hours, minutes)

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000)
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"