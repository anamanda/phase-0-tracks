# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
pokemon_db = SQLite3::Database.new("pokemon_location.db")

# create SQLite3 table
# id, pokemon, cp, location
create_pokemon_table = <<-SQL
  CREATE TABLE IF NOT EXISTS pokmeon (
    id INTEGER PRIMARY KEY,
    pokemon VARCHAR(255),
    cp INT,
    location VARCHAR(255)
  )
SQL