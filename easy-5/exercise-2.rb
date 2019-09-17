# I struggled hard with this one. The math was getting me.

MINS_PER_HOUR = 60
HOURS_PER_DAY = 24
MINS_PER_DAY = MINS_PER_HOUR * HOURS_PER_DAY

def time_of_day(mins)
  mins = mins % MINS_PER_DAY
  hours, minutes = mins.divmod(MINS_PER_HOUR)
  p hours
  p minutes
  format('%02d:%02d', hours, minutes)
end

p time_of_day(-90)