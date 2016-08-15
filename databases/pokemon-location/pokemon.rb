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

# create 10 pokemon
10.times do
  create_pokemon(pokemon_db, Faker::Pokemon.name, Faker::Number.between(1, 1000), Faker::Pokemon.location)
end