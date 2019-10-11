def print_in_box(string)
  width = string.length.to_i
  puts "+-" + "-"* width + "-+"
  puts "| " + " " *width + " |"
  puts "| " + "#{string}" +" |"
  puts "| " + " " *width + " |"
  puts "+-" + "-"* width + "-+"
end

print_in_box "Cameron is working his way through launch school"
