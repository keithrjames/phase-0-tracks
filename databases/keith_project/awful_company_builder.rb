# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("badbusiness.db")
# db.results_as_hash = true

# learn about fancy string delimiters
create_table_business = <<-SQL
  CREATE TABLE IF NOT EXISTS business(
    id INTEGER PRIMARY KEY,
    company_name VARCHAR(255),
    slogan VARCHAR(255),
    address VARCHAR(255),
    logo VARCHAR(255)
  );
SQL

# create a business table (if it's not there already)
db.execute(create_table_business)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion

def create_business(db, company_name, slogan, address, logo)
  db.execute("INSERT INTO business (company_name, slogan, address, logo) VALUES (?, ?, ?, ?);", [company_name, slogan, address, logo])
end

10000.times do
  create_business(db, Faker::Company.name, Faker::Company.bs, Faker::Address.street_address, Faker::Company.logo)
end

# explore ORM by retrieving data

buisness = db.execute("SELECT * FROM business ORDER BY RANDOM() LIMIT 1;")

p buisness


# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end