# Pseudocode and write a program that will allow an 
# interior designer to enter the details of a given 
# client: the client's name, age, number of children, 
# decor theme, and so on (you can choose your own as 
# long as it's a good mix of string, integer, and boolean data).

# Ask client for information

# client name

puts "What is the client's full name?"
client_name = gets.chomp

# client age

puts "What is the client's age?"

age = gets.chomp

# number of children

puts "How many children does the client have?"

children = gets.chomp

# decor theme

puts "What type of decor theme does the client prefer?"

decor_theme = gets.chomp

# budget below $100k

puts "Does the client want a budget under $50k? (y/n)"
budget = gets.chomp
if budget == "y"
	budget = "low"
	puts "has a low budget"
else
	budget = "high"
	puts "has a high budget"
end

puts "#{client_name} is #{years old} and has #{children}."
puts "#{client_name} prefers #{decor_theme} and #{budget}."

