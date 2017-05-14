# why do I have to specify the type? .to_s

# first create a hash called "form" to store the information
# it is unnecessary to create empty values because the keys will be added anyways
form = {
	# :client_name => "",
	# :age => "",
	# :children => "",
	# :decor_theme => "",
	# :budget => ""
}

# client name
# prompt the user to input client name
# capitalize to make sure that it is grammatically correct


puts "What is the client's full name?"
form[:client_name] = gets.chomp.to_s.capitalize!

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
elsif
	budget_response == "n"
	budget = "high"
else
	puts "Sorry, did not understand client's budget preference"
end
form[:budget] = budget

puts form

# prompt user if there are any errors
# if "none" is inputted, then form will print will values
# previously entered
# if something other than "none" is inputted, then
# a prompt will appear asking which key is incorrect
# based on the response, that value will be updated

puts "Are there any errors? Type 'none' if there are no corrections that need to be made."
correction = gets.chomp
	if correction != "none"
		puts "Select which entry is incorrect: client name, age, children, decor theme, or budget."
		incorrect_entry = gets.chomp.to_sym
		puts incorrect_entry
		puts "Please enter the correction"
		correction = gets.chomp
		form[incorrect_entry] = correction
		puts form

			# if incorrect_entry == "client name"
			# 	puts "Please enter the correction: "
			# 	form[:client_name] = gets.chomp
			# elsif incorrect_entry == "age"
			# 	puts "Please enter the correction: "
			# 	form[:age] = gets.chomp
			# elsif incorrect_entry == "children"
			# 	puts "Please enter the correction: "
			# 	form[:children] = gets.chomp
			# elsif incorrect_entry == "decor theme"
			# 	puts "Please enter the correction: "
			# 	form[:decor_theme] = gets.chomp
			# else incorrect_entry == "budget"
			# 	puts "Please enter whether the client prefers to have a low or high budget"
			# 	form[:budget] = gets.chomp
			# end
			# this is a longer way of writing a similiar thing
	else
		puts form
	end



