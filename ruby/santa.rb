class Santa
	attr_reader :name, :ethnicity
	attr_accessor :gender, :age, :reindeer_ranking
	# accessor is both 

	# initialize method with statement
	# add gender passed as string on initialization
	# add ethnicity passed as string on initialization
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance ..."
		@name = name # attribute
		@gender = gender
		@ethnicity = ethnicity
	end

	# add array of reindeer ranking as array
	# default value
	@@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	# method to print greeting
	def speak # action
		puts "Ho, ho, ho! Haaapy holidays!"
	end

	# method to take input and print statement
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# add age default at 0
	# not passed in initialization
	@age = 0 # state of class

	# setter methods

	# create method to add Santa age by 1 year, 
	# or whatever year inputted
	def celebrate_birthday=(add_year)
		@age = @age.to_i + add_year.to_i
	end

	def gender=(new_gender)#=> setter method
		@gender = new_gender
	end

	def get_mad_at(reindeer_name)
		# find the index of the reindeer
		@@reindeer_ranking.index(reindeer_name) #=> 0
		
		# move to the end
		@@reindeer_ranking.insert(-1, @@reindeer_ranking.delete_at(@@reindeer_ranking.index(reindeer_name)))
	end

	# getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender #=> need to have this getter method since made gender writeable
	# 	@gender
	# end

	# def age
	# 	@age
	# end
end


# santas = Santa.new("Mo", "female", "Asian")
# p santas
# # # getter method to call something in the initialize
# p santas.ethnicity #=> "Asian"

# # # change gender to "male" and p update
# santas.gender = "male"
# p santas.gender #=> "male"

# # # add 1 year to age of santa, allow users to choose how many years to add
# santas.celebrate_birthday = 2
# p santas.age #=> 1

# # move inputted reindeer to the back of the pack
# p santas.get_mad_at("Dancer")

# # release 0 driver code
# # santas = Santa.new
# puts santas.eat_milk_and_cookies("snickerdoodle")
# puts santas.speak

# one way
# can create empty array and a list of santas and their initialize values
# release 0

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigenders", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas


# release 4

# array of names, genders, and ethnicities of santas
names = ["Flo Rida", "Sonja", "Momo", "Henri", "Michala", "Bianca", "Misha", "Gabriela", "Zdenda"]
gender = ["female", "male", "fofinho", "gordo", "bolinha", "cutiepoo"]
ethnicity = ["German", "Austrian", "Canadian", "Czech", "cotton ball"]

# empty array for santa collection
santas = []

# santas << Santa.new("Flo Rida", "female", "German")
# p santas

# use array of genders and ethnicities and randomly select
puts "Iterating through names list to create santas ..."
names.length.times do |i|
	name = names[i]
	rand_gender = gender.sample
	rand_ethnicity0 = "#{ethnicity.sample}-#{ethnicity.sample}"
	puts "Creating a santa named #{name} ..."
	santas << Santa.new(name, rand_gender, rand_ethnicity0)
	puts "There are now #{santas.length} in the collection."
	puts "#{name} who is #{rand_gender} and #{rand_ethnicity0} has been added to the Santa database."
	puts "----"
end

# set your new Santa's age to a random number between 0 and 140.
names.length.times do |i|
	number_range = Random.new
	santas[i].celebrate_birthday = number_range.rand(141)
	santas[i].age
	puts "#{santas[i].name} is #{santas[i].age} years old."
end

# santas.celebrate_birthday= 1
# p santas[0].age
# # p santas.age
# puts "#{santas[0].name} is #{santas[0].age} years old."

# santas.celebrate_birthday
# generated_numbers = 4.times.map{Random.rand(8) } #=> [4, 2, 6, 8]



# puts "Iterating through names list to create santas ..."
# names.each do |name, gender, ethnicity|
# 	puts "Creating a santa named #{name} ..."
# 	santas << Santa.new(name, gender, ethnicity)
# 	p santas
# 	puts "There are now #{santas.length} in the collection."
# 	puts "#{name} who is #{gender} and #{ethnicity} has been added to the Santa database."
# 	puts "----"
# end

# # driver code to test if each santa can eat a specific type of cookie
# puts "Testing each Santa to make sure that he/she can eat a choclate chip cookie."
# santas.each do |santa|
# 	santa.eat_milk_and_cookies("chocolate chip")
# end







