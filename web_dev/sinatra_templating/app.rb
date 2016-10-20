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

get '/skateboards' do
@skateboards = {"Powell" => 7.75, "Birdhouse" => 7.75, "Flip" => 7.75}
erb :skateboarding
end

get '/skateboards/new' do
  erb :new_skateboard
end

post '/skateboards/charlie' do
  @type = params[:type]
  @size = params[:size]
  @skateboards[@type] = [@size]
  redirect '/skateboards'
end

# db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])