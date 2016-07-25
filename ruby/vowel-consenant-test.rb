# vowels = "aeiou"
# mystring = "jason"
# i = 0
# j = 0

# new_string = ""
# while i < vowels.length
#   while j < mystring.length
#     if mystring[j] == vowels[i]
#       new_string = new_string + vowels[i + 1]
#     else
#       new_string = new_string + mystring[j]
#     end
#     p new_string
#     j += 1
#   end
#   i += 1
# end

# puts new_string

puts "Enter user name"
user_name = gets.chomp

def next_vowel(mystring)
  vowels = ["a", "e", "i", "o", "u"]
  mystring = mystring.split('')
  new_string = mystring.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  new_string.join
end

consenant_string = next_vowel(user_name)

def next_consenant
  consenants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  consenant_string = consenant_string.split('')
  new_consenant_string = consenant_string.map do |letter|
    if consenants.include?(letter)
      consenants.rotate(1)[consenants.index(letter)]
    else
      letter
    end
  end
  new_consenant_string.join
end

p next_consenant



def alias_method(array)
  array.map! { |x| x.next }
end

p alias_method(name_array)





-----notes

# create loop that goes through each item in name_array
# NOTE: DOES NOT WORK, SO COMMENTED THIS OUT
# i = 0
# while i < name_array.length
#   vowels = ["a", "e", "i", "o", "u"]
#   vowel_count = 0
#   consenants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#   consenant_count = 0
#   alias_name = []

#   while vowel_count < vowels.length
#     # if name array at position index = vowels at position index vowel_count
#     # add the next vowel to the new array, alias_name
#     # set vowel count = vowels.length so it gets out of the while loop
#     # NOTE: this doesn't work
#     if name_array[i] == vowels[vowel_count]
#       alias_name << vowels[vowel_count + 1]
#       vowel_count = vowels.length
#     end
#     vowel_count += 1
#   end

#   # do the same kind of loop with consenant as done with vowels
#   # also doesn't work
#   while consenant_count < consenants.length
#     if name_array[i] == consenants[consenant_count]
#       alias_name << consenants[consenant_count + 1]
#       consenant_count = consenants.length
#     end
#     consenant_count += 1
#   end
#   i += 1
# end

# p alias_name



# SEPARATE METHODS FOR VOWELS / CONSEANTS

# create method to loop through each vowel
# def next_vowel
#   vowels = ["a", "e", "i", "o", "u"]
#   vowel_count = 0
#   new_vowels = []
#   while vowel_count < vowels.length
#     if vowels[vowel_count] == "u"
#       new_vowels[vowel_count] = "a"
#     else
#       new_vowels << vowels[vowel_count + 1]
#     end
#     vowel_count += 1
#   end
#   new_vowels
# end

# create method to loop through each consenant
# def next_consenant
#   consenants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#   consenant_count = 0
#   new_consenants = []
#   while consenant_count < consenants.length
#     if consenants[consenant_count] == "z"
#       new_consenants[consenant_count] = "b"
#     else
#       new_consenants << consenants[consenant_count + 1]
#     end
#     consenant_count += 1
#   end
#   new_consenants
# end




# Release 1 - Provide a User Interface / Release 2 - Store the Aliases


# get real name, capitalize it
puts "Enter a name, and you'll get a fake name back: (type 'quit' when you are finished)"
real_name = gets.chomp
real_name.capitalize!

# create array that be used to store the real and fake names
name_storage = []

# create loop to keep prompting user until they type 'quit'
until real_name == "quit"

  # define method that takes a real name and converts it into a fake name
  def fake_name_tool(real_name_change)

    # create counter (i) and create an empty string where the fake name will go
    i = 0
    fake_name = ""

    # create while loop that changes each letter in the real name to the next letter, return fake_name
    while i < real_name_change.length
      fake_name << real_name_change[i].next
      i += 1
    end
    fake_name

  end

  # print the fake name after each entry
  p fake_name_tool(real_name)

  # add the sentence 'real name' is also known as 'fake name' to the array that stores real/fake names
  name_storage.push("#{real_name} is also known as #{fake_name_tool(real_name)}.")

  # prompt user again until they type 'quit'
  puts "Enter a name, and you'll get a fake name back: (type 'quit' when you are finished)"
  real_name = gets.chomp

  # capitalize the name unless they type in 'quit'
  if real_name == "quit"
    real_name = "quit"
  else
    real_name.capitalize!
  end

end





    # capitalize the first letter of first and last name
    reversed_split_name.map{ |x| x.capitalize!}


