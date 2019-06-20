def shout_out_to(name)
  cap_name = name.chars.each { |c| c.upcase! }

  puts 'HEY ' + cap_name.join('')
end

shout_out_to('you') # expected: 'HEY YOU'
