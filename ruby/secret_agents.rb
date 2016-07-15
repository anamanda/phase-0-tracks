# ENCRYPTION

# create counter variable to loop through encryption

# set start-variable that has beginning input

# create loop that goes through each position and moves one position forward

  # if start-variable[counter] is " "
    # start-variable[counter] = start-variable[counter]

  #elsif start-variable[counter] is "z"
    #start-variable[counter] = "a"

  # else
    # go to the next character and save that
  
  # loop again, go to next position, repeat until length of start-variable is being reached

# print result

def encrypt(secret_password)
  counter = 0

  while counter < secret_password.length
    if secret_password[counter] == " "
      secret_password[counter] = secret_password[counter]
    elsif secret_password[counter] == "z"
      secret_password[counter] = "a"
    else
      secret_password[counter] = secret_password[counter].next
    end

    counter += 1
  end

  p secret_password
end



# DECRYPTION

# create counter variable to loop through decryption

# set alphabet variable equal to the alphabet as a string

# set start-variable that has beginning input

# create loop that goes through each position and moves one position forward

  # if start-variable[counter] is " "
    # start-variable[counter] = start-variable[counter]

  # else
    # go to the next character and figure out its position in the alphabet and subtract one, and find letter at that position and save that

  # loop again, go to next position, repeat until length of start-variable is being reached

# print result

def decrypt(secret_password)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while counter < secret_password.length
    if secret_password[counter] == " "
      secret_password[counter] = secret_password[counter]
    else
      secret_password[counter] = alphabet[alphabet.index(secret_password[counter]) - 1]
    end

    counter += 1
  end

  p secret_password
end




encrypt("abc") # should return "bcd"
encrypt("zed") # should return "afe"
decrypt("bcd") # should return "abc"
decrypt("afe") # should return "zed"



