MINS_PER_HOUR = 60
HOURS_PER_DAY = 24
MINS_PER_DAY = MINS_PER_HOUR * HOURS_PER_DAY

string = "24:00"

array = string.split(":")

minutes_from_hours = array[0].to_i * 60
minutes = array[1].to_i

p minutes_from_hours + minutes



# mins = mins % MINS_PER_DAY
# hours, minutes = mins.divmod(MINS_PER_HOUR)
# p hours
# p minutes
# p format('%02d:%02d', hours, minutes)






