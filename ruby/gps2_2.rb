# Method to print a list and make it look pretty
# input: list
	# steps: go through list and print out item name with quantity and 
	# fluff text to make it look presentable
# output: "You will need to purchase: quantity of item, etc"

def pretty_list(list)
	list.each { |item_name, item_quantity|
		puts "You will need to purchase #{item_quantity} of #{item_name}."
	}
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate each individual item
  # set default quantity equal to 1
  # print the list to the console, call print list method
# output: hash, key: items, value: quantity

def create_list(items)
	item_list = {}
	item_array = items.split(" ")
	default_quantity = 1
	item_array.each do |item|
		item_list[item] = default_quantity
	end
	pretty_list(item_list) 
end

shopping_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add key: item to list; 
	# if value: quantity is present, then update 
	# if not, default to default
# output: updated hash with new key: items and value: quantity

def add_to_list(list, item, quantity = 1)
	list[item] = quantity
end

add_to_list(shopping_list, "lemonade", 2)
add_to_list(shopping_list, "tomatoes", 3)
add_to_list(shopping_list, "onions")
add_to_list(shopping_list, "ice cream", 4)

# Method to remove an item from the list
# input: item that we want to remove from the list, list
	# steps: search inside list for item name, delete item name
# output: updated list with item removed

def remove_from_list(list, item)
	list.delete(item)
end

remove_from_list(shopping_list, "lemonade")

# Method to update the quantity of an item
# input: list, key: item, value: quantity
	# steps: go through list, find key: item, update value: quantity
# output: updated list with value: quantity updated for item 

def update_quantity(list, item, quantity)
	add_to_list(list, item, quantity)
end

update_quantity(shopping_list, "ice cream", 1)

pretty_list(shopping_list)

# Release 4: Reflect
# What did you learn about pseudocode from working on this challenge?
# That thinking ahead about input and output is very useful. The basic 
# structure of pseucode is simple but effective.

# What are the tradeoffs of using arrays and hashes for this challenge?
# There are some special methods that can only be called on to arrays
# or hashes. For this particular method, hashes would still be better
# because of the key value assignment feature.

# What does a method return?
# A method returns the last value defined.

# What kind of things can you pass into methods as arguments?
# String and Fixnums are some things that you can pass into methods as
# arguments. You cannot pass instance variables or other methods (only what
# other methods return).

# How can you pass information between methods?
# You can call a method inside another method. You can also name something that
# a variable returns and pass as an argumentfor a method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I know now more of the importance of pseudocode and how it can be utilized
# to make life easier when the coding starts. 
