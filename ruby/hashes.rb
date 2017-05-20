# first create a hash called "form" to store the information
# it is unnecessary to create empty values because the keys will be added anyways
form = {}

# client name
# prompt the user to input client name
# capitalize to make sure that it is grammatically correct

puts "What is the client's first name?"
first_name = gets.chomp.to_s.capitalize!

puts "What is the client's last name?"
last_name = gets.chomp.to_s.capitalize!

form[:full_name] = "#{first_name}" + " " + "#{last_name}"

# client age
# prompt user to input client's age

puts "What is the client's age?"
form[:age] = gets.chomp.to_i

# number of children
# prompt user to input number of children client has

puts "How many children does the client have?"
form[:children] = gets.chomp.to_i

# decor theme
# prompt user to input client's decor theme preference

puts "What type of decor theme does the client prefer?"
form[:decor_theme] = gets.chomp.to_s

# budget below $100k
# prompt user to select whether client prefers a budget
# above or below $50k
# if the user does not input either "y" or "n", then
# the value returned will be nil and the "Sorry" phrase
# will appear

puts "Does the client want a budget under $50k? (y/n)"
budget_response = gets.chomp.to_s
		if budget_response == "y"
			budget = "low"
		elsif budget_response == "n"
			budget = "high"
		else 
			puts "Sorry, did not understand client's budget preference"
		end
form[:budget] = budget

puts "This is the information that you have inputted."
puts "Client's name: #{form[:full_name]}"
puts "Client's age: #{form[:age]}"
puts "Number of children: #{form[:children]}"
puts "Preferred decor theme: #{form[:decor_theme]}"
puts "Budget: #{form[:budget]}"

# prompt user if there are any errors
# if "none" is inputted, then form will print will values previously entered
# if something other than "none" is inputted, then
# a prompt will appear asking which key is incorrect
# based on the response, that value will be updated

puts "Are there any errors? Please type 'yes' or 'none'."
correction = gets.chomp
	if correction != "none"
		puts "Select which entry is incorrect: client name, age, children, decor theme, or budget."
		incorrect_entry = gets.chomp.to_sym
			if incorrect_entry == :budget
				puts "Please enter 'low' or 'high'"
			else
				puts "Please enter the correction for #{incorrect_entry}"
			end
		correction = gets.chomp
		form[incorrect_entry] = correction
	else
	end

puts "#{form[:full_name]} is #{form[:age]} years old with #{form[:children]} children and likes #{form[:decor_theme]} theme and has a #{form[:budget]} budget."


