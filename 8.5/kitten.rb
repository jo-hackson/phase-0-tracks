require 'sqlite3'

db = SQLite3::Database.new("kittens.db")

create_table_cmd = <<-SQL
	CREATE TABLE kittens(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
	)

	# CREATE TABLE hotel(
	# 	id INTEGER PRIMARY KEY,
	# 	hotel_name VARCHAR(255),
	# 	check_in DATE,
	# 	check_out DATE
	# )	

	# CREATE TABLE flight(
	# 	id INTEGER PRIMARY KEY,
	# 	flight_date DATE,
	# 	origin_airport VARCHAR(255),
	# 	departure_time TIME,
	# 	destination_airport VARCHAR(255),
	# 	arrival_time TIME
	# )

SQL

db.execute(create_table_cmd)