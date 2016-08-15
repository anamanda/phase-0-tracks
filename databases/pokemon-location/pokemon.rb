# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
pokemon_db = SQLite3::Database.new("pokemon_location.db")

# create SQLite3 table
# id, pokemon, cp, location
create_pokemon_table = <<-SQL
  CREATE TABLE IF NOT EXISTS pokemon (
    id INTEGER PRIMARY KEY,
    pokemon VARCHAR(255),
    cp INT,
    location VARCHAR(255)
  )
SQL

# create pokemon table
pokemon_db.execute(create_pokemon_table)

# create method for adding pokemon, cp, and location into table
def create_pokemon(db, pokemon, cp, location)
  db.execute("INSERT INTO pokemon (pokemon, cp, location) VALUES (?, ?, ?)", [pokemon, cp, location])
end

# # commented out this command so I don't create 10 pokemon every time I run the program
# # create 10 pokemon
# 10.times do
#   create_pokemon(pokemon_db, Faker::Pokemon.name, Faker::Number.between(1, 1000), Faker::Pokemon.location)
# end

# create user interface where they can add pokemon until typing in 'done'
puts "What pokemon have you found recently? Type 'done' when finished."
user_pokemon_name = gets.chomp

until user_pokemon_name == 'done'
  puts "Cool! And what was its CP?"
  user_pokemon_cp = gets.chomp.to_i

  puts "Great. And finally, in what city did you find it?"
  user_pokemon_location = gets.chomp

  puts "Thank you for your input!"

  # use method create_pokemon to add pokemon to the database
  create_pokemon(pokemon_db, user_pokemon_name, user_pokemon_cp, user_pokemon_location)

  puts "What other pokemon have you found recently? Type 'done' when finished."
  user_pokemon_name = gets.chomp
end

puts "Here's the current updated database:\n\n"

# select all of the pokemon from the database, and list name, CP, and location for each
list_pokemon = pokemon_db.execute("SELECT * FROM pokemon")

list_pokemon.each do |pokemon|
  puts "Pokemon: #{pokemon[1]}, CP: #{pokemon[2]}, Location: #{pokemon[3]}"
end


# create method for user to change information about pokemon
def update_id(db, id_number, what_to_change, new_value)
  if what_to_change == "pokemon"
    db.execute("UPDATE pokemon SET pokemon=(?) WHERE id=(?)", [new_value, id_number])
  elsif what_to_change == "cp"
    db.execute("UPDATE pokemon SET cp=(?) WHERE id=(?)", [new_value, id_number])
  elsif what_to_change == "location"
    db.execute("UPDATE pokemon SET location=(?) WHERE id=(?)", [new_value, id_number])
  end
end

# create user interface for changing information about pokemon
puts "Would you like to update any of the Pokemon? Please type in the ID of the Pokemon to change it. Type '0' when finished."
pokemon_correction_id = gets.chomp.to_i

until pokemon_correction_id == 0
  puts "What would you like to change? (pokemon, cp, location)"
  change = gets.chomp

  puts "And what would you like to change the #{change} value to?"
  value_change = gets.chomp

  # use conditional statement to determine whether they want to change pokemon, cp, or location
  # pass different arguments to method based on user input
  if change == "pokemon"
    update_id(pokemon_db, pokemon_correction_id, "pokemon", value_change)
  elsif change == "cp"
    value_change.to_i
    update_id(pokemon_db, pokemon_correction_id, "cp", value_change)
  elsif change == "location"
    update_id(pokemon_db, pokemon_correction_id, "location", value_change)
  end

  puts "Would you like to change anything else? Please type in the ID of the Pokemon to change it. Type '0' when finished."
  pokemon_correction_id = gets.chomp.to_i
end

puts "Here's the current updated database:\n\n"

# select all of the pokemon from the database, and list name, CP, and location for each
list_pokemon = pokemon_db.execute("SELECT * FROM pokemon")

list_pokemon.each do |pokemon|
  puts "Pokemon: #{pokemon[1]}, CP: #{pokemon[2]}, Location: #{pokemon[3]}"
end





# # select all of the pokemon from the database, and list the column names as well as the information
# columns, *rows = pokemon_db.execute2("SELECT * FROM pokemon")

# with_column_name = columns, *rows

# with_column_name.each do |pokemon|
#   puts "#{pokemon[1]}, #{pokemon[2]}, #{pokemon[3]}"
# end



