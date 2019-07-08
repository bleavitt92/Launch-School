#Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# input: string - 'firstname lastname'
# output: string - 'last name, firstname'

def swap_name(string)
  new_string = ''
  arr = string.split(' ')
  new_string << "#{arr[-1]}, #{arr[0]}"
end









#input: single string - 'firstname lastname'
#output: string - 'lastname, firstname'

# def swap_name(string)
#   string.split.reverse.join(', ')
# end 

p swap_name('Joe Roberts') == 'Roberts, Joe'
