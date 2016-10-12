require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("badbusiness.db")

create_table_business = <<-SQL
  CREATE TABLE IF NOT EXISTS business(
    id INTEGER PRIMARY KEY,
    company_name VARCHAR(255),
    slogan VARCHAR(255),
    address VARCHAR(255),
    logo VARCHAR(255)
  );
SQL

db.execute(create_table_business)

def create_business(db, company_name, slogan, address, logo)
  db.execute("INSERT INTO business (company_name, slogan, address, logo) VALUES (?, ?, ?, ?);", [company_name, slogan, address, logo])
end

# 1000.times do
#   create_business(db, Faker::Company.name, Faker::Company.bs, Faker::Address.street_address, Faker::Company.logo)
# end

# explore ORM by retrieving data

business = db.execute("SELECT * FROM business ORDER BY RANDOM() LIMIT 1;")

# DRIVER CODE

puts <<-STRING
Welcome to the random business generator!!!

Now creating your random business...

...
...
...

Name: #{business[0][1]}
Slogan: #{business[0][2]}
Address: #{business[0][3]}
View your logo here: #{business[0][4]}
STRING

