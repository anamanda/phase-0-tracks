# Release 0 - Attempt a Tricky Algorithm

# ask for user's name
puts "What is your first and last name?"

# get user's name
name = gets.chomp

# create new variable that separates first and last name / puts them into arrays
split_name = name.split(" ")

# call the reverse method on that variable
reversed_split_name = split_name.reverse

# turn the array back into a string
reversed_name = reversed_split_name.join(" ")

# turn that string into an array, with each letter an individual item
name_array = reversed_name.split("")


def alias_method(array)
  array.map! { |x| x.next }
end

p alias_method(name_array)


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




# Release 1 - Provide a User Interface



puts "Enter a name, and you'll get a fake name back: (type 'quit' when you are finished)"
real_name = gets.chomp

until real_name == "quit"

  def fake_name_tool(real_name_change)
    i = 0
    fake_name = ""

    while i < real_name_change.length
      fake_name << real_name_change[i].next
      i += 1
    end
    fake_name
  end
  p fake_name_tool(real_name)

  puts "Enter a name, and you'll get a fake name back: (type 'quit' when you are finished)"
  real_name = gets.chomp

end






