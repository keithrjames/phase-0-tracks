# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

#create skateboard page

db2 = SQLite3::Database.new("skateboards.db")
db2.execute("CREATE TABLE IF NOT EXISTS skateboards(type varchar(255), size int)")
db2.results_as_hash = true


get '/skateboards' do
@skateboards = db2.execute("SELECT * FROM skateboards")
erb :skateboarding
end

get '/skateboards/new' do
  erb :new_skateboard
end

post '/skateboards/charlie' do
 db2.execute("INSERT INTO skateboards (type, size) VALUES (?,?)", [params['type'], params['size'].to_f])
  redirect '/skateboards'
end

