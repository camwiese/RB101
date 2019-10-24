# input: string
# output: integer


# def time_of_day(int)
#   minutes = int % 1440
#   hours, minutes = minutes.divmod(60)
#   format('%02d:%02d', hours, minutes)

# end

# array[0] * 60 + array[1]

# minute_string.split(":")

# split the string into hours and minutes. 
# after midnight:
# * subtract hours from 23 & minutes from 60

# before midnight
# * return values * 60 + minutes

def after_midnight(string)
  time = string.split(":")
  hours = time[0].to_i
  minutes = time[1].to_i

  ((23-(hours))* 60 + (60 - minutes))
end

def before_midnight(string)
  time = string.split(":")
  hours = time[0].to_i
  minutes = time[1].to_i


  (hours + minutes)
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34')
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0