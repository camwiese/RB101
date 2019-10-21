# Lettercase percentage ratio
# Count uppercase, lowercase, and neither into a hash

# input: string
# output: hash

# The outpush hash needs to return the percentage of that value. 

# break the string into characters
# check the type of character and add a counter to the variable (up, low, no)
# set the values to the hash


def letter_case_count(string)
  count = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if ("A".."Z").include?(char)
      count[:uppercase] += 1
    elsif ("a".."z").include?(char)
      count[:lowercase] += 1
    else
      count[:neither] += 1
    end
  end 
  count
end

def letter_percentages(string)
  percent = { lowercase: [], uppercase: [], neither: [] }
  count = letter_case_count(string)

  sum = count.values.sum
  percent[:uppercase] = ((count[:uppercase] / sum.to_f) * 100)
  percent[:lowercase] = ((count[:lowercase] / sum.to_f) * 100)
  percent[:neither]   = ((count[:neither]   / sum.to_f) * 100)

  percent
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
