# Write a method that takes a floating point number (0-360 degrees) and returns a string

# input = floating number
# output = string (degrees, minutes, seconds).


# Notes:
# Format output with leading zeros

# How to convert?
# * Whole number is the degrees
# * Remaining decimal * 60 = minutes
# * Remaing decimal *  60 = seconds

# In order to solve this problem we need to:
# * Grab the number before after the decimal and store it as minutes
# * Multiple the decimal by 60, grab the whole number and store the decimal
# * Multiple that decimal by 60, rouding up


# Minute and second defaults are 00 and then the minute is added to it to increment
# (00 + #) or default to 00.

# store degrees, minutes, and seconds into variables
# join each seperated by Degree "\xC2\xB0", ', "


# handle each integer that's passed in.
# * Handle the degree by running int % 1. If zero return. Else
# * Handle the minutes by running int % 1 * 60. If zero, add to 00 and return. Else
# * Hanlde the second by running int % 1 * 60.
# * Set degrees, minutes, and seconds as variables
# * Return a joined array.

DEGREE = "\xC2\xB0"


def dms(int)
  trailing_number = int % 1

  # Degree
  degree = (int - trailing_number).round(0)

  # Minute
  minute = (trailing_number * 60).round(2)
  trailing_number = minute % 1
  minute = (minute - trailing_number).round(0)

  # Second
  second = (trailing_number * 60).round(0)

  # Output
  if minute < 10
    minute = "0" + minute.to_s
  end
  if second < 10
    second = "0" + second.to_s
  end

  "#{degree.to_s}#{DEGREE} #{minute.to_s}\' #{second.to_s}\" }"
end


p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)