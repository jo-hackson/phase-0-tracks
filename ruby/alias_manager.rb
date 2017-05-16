# Method to swap the first and last name positions
def swap_name_position(input)
	# input is a string
	# use .split to divide the string by " " or space
	# call the new variable "split_name"
	split_name = input.split(" ")
	
	# swap the position of the name by the index
	# an array will be created
	swap_name = split_name[1], split_name[0]
	#=> ["Ma", "Jo"] with class Array
end

# Method to separate the characters to prepare for
# conversion in another method
def separate_characters(input)
	# input is ["Ma", "Jo"] class = Array
	# convert array to string to be split up by letter
	# .join will return a string by converting each
	# element in the array to a string
	input = input.join(", ")
	separate_characters = input.split("")
	p separate_characters.length
	#=> ["M", "a", ",", " ", "J", "o"] with class Array
end

def alias_maker(input)
	swapped_name = swap_name_position(input)
	separated_characters = separate_characters(swapped_name)
end

p alias_maker("Jo Ma")