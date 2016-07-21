# ask for user's name
puts "What is your name?"

# get user's name
name = gets.chomp

# create new variable that separates first and last name / puts them into arrays
split_name = name.split(" ")

# call the reverse method on that variable
reversed_split_name = split_name.reverse
