# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_campuses_table = <<-SQL
	CREATE TABLE IF NOT EXISTS campuses(
		id INTEGER PRIMARY KEY,
		campus_city VARCHAR(255),
		FOREIGN KEY (campus_city) REFERENCES students(campus)
	);
SQL

# show students on the home page
get '/' do
  db.execute(create_campuses_table)
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/age' do
  erb :age_ranking
end

get '/campuses/new' do
	erb :new_campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campuses' do 
  db.execute("INSERT INTO campuses (campus_city) VALUES (?)", [params['campus_city']])
  redirect '/'
end

# add static resources