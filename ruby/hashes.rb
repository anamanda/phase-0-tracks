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

until suite_pref == "regular" || suite_pref == "deluxe"
  puts "Incorrect input."
  puts "Do you prefer the regular suite or the deluxe suite? (please enter regular/deluxe)"
  suite_pref = gets.chomp
end

