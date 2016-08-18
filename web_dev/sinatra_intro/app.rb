# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write GET route that allows user to search for student(s) via query parameter of campus

get '/:campus' do
  campus = params[:campus]
  student_campus = db.execute("SELECT * FROM students WHERE campus=?", campus)[2]

  "Campus: #{campus}<br>#{student_campus.to_s}"

  # response = ""
  # student_campus.each do |student|
  #   response << "Name: #{student['name']}<br>"
  #   response << "Age: #{student['age'].to_s}<br><br>"
  # end

  # response
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

# GET route that retrieves an address

get '/contact' do
  "48 Wall St, New York, NY"
end

# GET route that can take a person's
# name as a query parameter

get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/:num_1/plus/:num_2' do
  num_1 = params[:num_1]
  num_2 = params[:num_2]

  sum = num_1.to_i + num_2.to_i
  sum_string = sum.to_s

  sum_string
end













