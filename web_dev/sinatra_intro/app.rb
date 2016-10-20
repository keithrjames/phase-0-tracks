# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#contact

get '/address/:person/:address' do
  person = params[:person]
  address = params[:address]
  "#{person} is a programmer, and they live at #{address}."
end

# Great Job

get '/greatjob' do
  name = params[:name]
  if name
  "Great job, #{params[:name]}!"
  else
  "Great job!"
  end
end

get '/:numberone/plus/:numbertwo' do
  numberone = params[:numberone].to_i
  numbertwo = params[:numbertwo].to_i
  answer = "#{numberone + numbertwo}"
end
