# Interior Designer Client Form

# enter client name
puts "Please enter your name:"
client_name = gets.chomp

# enter client age
puts "Please enter your age:"
client_age = gets.chomp

# enter client's number of children, make until loop to ensure correct data type
puts "Please enter your number of children (digits only):"
number_children = gets.chomp

# enter client's decor theme
puts "Please enter your decor theme:"
decor_theme = gets.chomp

# enter client's favorite color
puts "Please enter your favorite color:"
favorite_color = gets.chomp

# enter whether client prefers the regular package or the deluxe package
puts "Do you prefer the regular suite or the deluxe suite? (please enter regular/deluxe)"
suite_pref = gets.chomp

# keep prompting user until they enter either "regular" or "deluxe"
until suite_pref == "regular" || suite_pref == "deluxe"
  puts "Incorrect input."
  puts "Do you prefer the regular suite or the deluxe suite? (please enter regular/deluxe)"
  suite_pref = gets.chomp
end

# set deluxe equal to true or false based on user input
if suite_pref == "deluxe"
  deluxe = true
else
  deluxe = false
end

# put user input into hash
decor_form = {
  name: client_name,
  age: client_age.to_i,
  children: number_children.to_i,
  theme: decor_theme,
  color: favorite_color,
  suite: deluxe
}

# print hash
p decor_form


# ask client if they want to update a key
puts "Do you want to update a key? Enter key you'd like to update, or enter 'none'."
update = gets.chomp

# make sure client input corresponds to key name or is 'none'... handling user errors just for fun
until update == "none" || update == "name" || update == "age" || update == "children" || update == "theme" || update == "color" || update == "suite"
  puts "I didn't understand you. Please enter key name or type 'none'."
  update = gets.chomp
end

# if the user does not want to change any input, do nothing
# else if the user wants to change any of the key values,
# prompt them to type in the category they want to change.
# once they do this, ask them what they want to set the new value to,
# then substitute the value in the hash
if update == "none"
  nil
elsif update == "name"
  puts "What do you want your new name to be?"
  new_name = gets.chomp
  decor_form[:name] = new_name
elsif update == "age"
  puts "What do you want your new age to be?"
  new_age = gets.chomp
  decor_form[:age] = new_age.to_i
elsif update == "children"
  puts "What do you want your new number of children to be?"
  new_children = gets.chomp
  decor_form[:children] = new_children.to_i
elsif update == "theme"
  puts "What do you want your new theme to be?"
  new_theme = gets.chomp
  decor_form[:theme] = new_theme
elsif update == "color"
  puts "What do you want your new favorite color to be?"
  new_color = gets.chomp
  decor_form[:color] = new_color
elsif update == "suite"
  puts "What is your new suite preference? (regular/deluxe)"
  new_suite = gets.chomp
  until new_suite == "regular" || new_suite == "deluxe" # set up loop to get correct input
    puts "Incorrect input."
    puts "Do you prefer the regular suite or the deluxe suite? (please enter regular/deluxe)"
    new_suite = gets.chomp
  end

  # set new_deluxe equal to true or false based on user's new preference
  if new_suite == "deluxe"
    deluxe_new = true
  else
    deluxe_new = false
  end

  decor_form[:suite] = deluxe_new
end

# print out the latest version of the hash
# it will be updated with new value if user enters one
puts "Latest version of your form:"
p decor_form




