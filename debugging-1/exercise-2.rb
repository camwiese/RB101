def shout_out_to(name)
  name = name.chars.map { |c| c.upcase! }

  puts 'HEY ' + name.join
end

shout_out_to('you') # expected: 'HEY YOU'