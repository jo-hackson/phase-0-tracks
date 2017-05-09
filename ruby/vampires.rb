puts "How many employees will be processed?"
number_of_employees = gets.chomp

while number_of_employees > 0

	# Name
	puts "What is your name?"
	input = gets.chomp

	if input == "Drake Cula" || input == "Tu Fang"
	  first_name = true
	  # puts "true"
	else
	  first_name = false
	  # puts "false"
	end

	# Age
	puts "How old are you?"
	input_age = gets.chomp

	puts "What year were you born?"
	input_year = gets.chomp

	age = 2017 - input_year.to_i
	# puts age

	if age == input_age.to_i
		actual_age = true
		# puts "true"
	else 
	  	actual_age = false
		# puts "false"
	end
	puts actual_age
	# Garlic Bread
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	input = gets.chomp

	if input == "y"
	  garlic_bread = true
	  # puts "true"
	else
	  garlic_bread = false
	  # puts "false"
	end

	# Insurance
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	input = gets.chomp

	if input == "y"
	  insurance = true
	  # puts "true"
	else
	  insurance = false
	  # puts "false"
	end

	# Conditions

	if first_name == true
		puts "Definitely a vampire."
	elsif actual_age == true && (garlic_bread == true || insurance == true)
		puts "Probably not a vampire."
	elsif actual_age == false && (garlic_bread == false && insurance == false)
		puts "Almost certainly a vampire"
	elsif actual_age == false && (garlic_bread == false || insurance == false)
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end

  number_of_employees -= 1  

end

