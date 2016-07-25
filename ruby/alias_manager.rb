# 5.5 - Solo Challenge
# Create program that takes a name, changes it, returns that name,
# give them the option to continue changing names until they type quit,
# and then return all the real / fake names at the end


# ask for user's name
puts "What is your first and last name? (type 'quit' when finished)"

# get user's name, capitalize first letter of each name (split into array, do that, join back to string)
real_name = gets.chomp.split.map { |x| x.capitalize }.join(' ')

# create an array that will be used to store the real and fake names
name_storage = []

# keep asking until user types 'quit' (and 'Quit' - which is what real_name will be converted to if they type 'quit' after the first loop)
until real_name == 'quit' || real_name == "Quit"
  def alias_method(name)
    # create new variable that separates first and last name / puts them into arrays
    split_name = name.split(" ")

    # call the reverse method on that variable
    reversed_split_name = split_name.reverse

    # turn the array back into a string
    reversed_name = reversed_split_name.join(" ")

    # move each vowel to the next vowel, and each consenant to the next consenant
    next_vowel = reversed_name.tr('aeiouAEIOU', 'eiouaEIOUA')
    next_consenant = next_vowel.tr('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZC')

    # return next_consenant
    next_consenant
  end

  # print result of method with the name user entered
  p alias_method(real_name)

  # add the sentence 'real name' is also known as 'fake name' to the array that stores real/fake names
  name_storage.push("#{real_name} is also known as #{alias_method(real_name)}.")

  # ask user again until they type 'quit', capitalize first letter of each name (split into array, do that, join back to string)
  puts "What is your first and last name? (type 'quit' when finished)"
  real_name = gets.chomp.split.map { |x| x.capitalize }.join(' ')
end

# use a block to iterate through each sentence in the array, print each one
name_storage.map do |name|
  puts name
end





