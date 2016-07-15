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

  return secret_password

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

  return secret_password
end



=begin
p encrypt("abc") # should return "bcd"
p encrypt("zed") # should return "afe"
p decrypt("bcd") # should return "abc"
p decrypt("afe") # should return "zed"
p decrypt(encrypt("swordfish"))
=end

# The nested decrypt/encrypt method works because it at first takes the value "swordfish" and then encrypts it
# and after that, it decrypts that result, which brings it back to "swordfish".



# INTERFACE

# Prompt user to see whether they'd like to decrypt or encrypt, save the input in a variable

# Ask them for password

# If they want to decrypt, run decrypt method

# If they want to encrypt, run encrypt method

# Print results to screen and exit

puts "Would you like to decrypt or encrypt the password? (encrypt/decrypt)"
encrypt_or_decrypt = gets.chomp

until encrypt_or_decrypt == "encrypt" || encrypt_or_decrypt == "decrypt"
  puts "Please enter 'encrypt' or 'decrypt'"
  encrypt_or_decrypt = gets.chomp
end

if encrypt_or_decrypt == "encrypt"
  puts "What would you like the password to be?"
  password = gets.chomp
  p encrypt(password)

elsif encrypt_or_decrypt == "decrypt"
  puts "What would you like the password to be?"
  password = gets.chomp
  p decrypt(password)
end
    








