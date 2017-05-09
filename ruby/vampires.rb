puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

until number_of_employees <= 0

	# Name
	puts "What is your name?"
	input = gets.chomp

		if input == "Drake Cula" || input == "Tu Fang"
		  first_name = true
		else
		  first_name = false
		end
 
	# Age
	puts "How old are you?"
	input_age = gets.chomp

	puts "What year were you born?"
	input_year = gets.chomp

	age = 2017 - input_year.to_i

		if age == input_age.to_i
			actual_age = true
		else 
		  	actual_age = false
		end

	# Garlic Bread
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	input = gets.chomp
		if input == "y"
		  garlic_bread = true
		else
		  garlic_bread = false
		end

	# Insurance
	puts "Would you like to enroll in the company's health insurance? (y/n)"

	input = gets.chomp

		if input == "y"
		  insurance = true
		else
		  insurance = false
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

	final_say = "done"
	special_allergy = "sunshine"
	
	employee_input = ""
  
  	while employee_input != final_say # || special_allergy = "sunshine"
		puts "Name any allergies, one at a time, that you have. Type 'done' when finished."
		employee_input = gets.chomp
    if employee_input == special_allergy
	    puts "Probably a vampire"
	    employee_input = "done"
	  end
	end
	
  number_of_employees -=1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

