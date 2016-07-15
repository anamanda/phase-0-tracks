# create counter variable to loop through encryption

# start-variable that has beginning input

# create loop that goes through each position and move it one position forward and save it

  # if start-variable[counter] is " "
    # start-variable[counter] = start-variable[counter]

  # else
    # go to the next character and save that
  
  # loop again, go to next position, repeat until length of start-variable is being reached


counter = 0
secret_password = "unicorn gallop"

while counter < secret_password.length
  if secret_password[counter] == " "
    secret_password[counter] = secret_password[counter]
  else
    secret_password[counter] = secret_password[counter].next
  end

  counter += 1
end

puts secret_password


