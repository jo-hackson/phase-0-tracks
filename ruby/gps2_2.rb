# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate each individual item
  # set default quantity equal to 1
  # print the list to the console, call print list method
# output: hash, key: items, value: quantity

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add key: item to list; 
	# if value: quantity is present, then update 
	# if not, default to default
# output: updated hash with new key: items and value: quantity

# Method to remove an item from the list
# input: item that we want to remove from the list, list
# steps: search inside list for item name, delete item name
# output: updated list with item removed

# Method to update the quantity of an item
# input: list, key: item, value: quantity
# steps: go through list, find key: item, update value: quantity
# output: updated list with value: quantity updated for item 

# Method to print a list and make it look pretty
# input: list
# steps: go through list and print out item name with quantity and 
	# fluff text to make it look presentable
# output: "You will need to purchase: quantity of item, etc"