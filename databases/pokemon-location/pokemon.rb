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

puts "Here's the current updated database:"

# select all of the pokemon from the database, and list name, CP, and location for each
list_pokemon = pokemon_db.execute("SELECT * FROM pokemon")

list_pokemon.each do |pokemon|
  puts "Pokemon: #{pokemon[1]}, CP: #{pokemon[2]}, Location: #{pokemon[3]}"
end



