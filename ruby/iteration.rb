# Release 0

# # first way:
# def favorite_food
# 	food1 = "fish"
# 	food2 = "beer"
# 	puts "What is your favorite food?"
# 	yield(food1, food2)
# end

# # second way:
# favorite_food { |food1, food2| puts "I like #{food1} and #{food2}!"}

# def favorite_food
# 	puts "What is your favorite food?"
# 	yield("fish", "beer")
# end

# favorite_food { |food1, food2| puts "I like #{food1} and #{food2}!"}

# Release 1
# Demonstrate that you can iterate through each one using 
# .each, and then using .map! (modifying the data in some way). 
# Note that you can't call .map! on a hash, so you can skip that 
# (.map returns an array, so a destructive map method is logically 
# impossible on a hash). Print the data structures before and after 
# each call to demonstrate whether they have been modified or not.

# fruit = ["apple", "orange", "banana", "plum", "pineapple"]


# fruit.each do |fruit| 
# 	puts fruit
# end

# fruit.map! do |fruit| 
# 	last_letter = fruit.length
# 	p fruit.insert(last_letter, "s")
# 	# puts fruit + "s"
# end

# maturity = {
# 	"apple" => "unripe",
# 	"orange" => "unripe",
# 	"banana" => "unripe",
# 	"plum" => "unripe",
# 	"pineapple" => "unripe"
# }

# maturity.each do |fruit, ripeness|
# 	puts "The #{fruit} is #{ripeness}."
# end

# maturity.map do |fruit, ripeness|
# 	ripeness = "ripe"
# 	puts "Now the #{fruit} is #{ripeness}."
# end

# Release 2


# 2. A method that filters a data structure for only items that 
# do satisfy a certain condition (for example, keeping any numbers that are less than 5).
# 3. A different method that filters a data structure for only items 
# satisfying a certain condition -- Ruby offers several options!
# 4. A method that will remove items from a data structure until the condition 
# in the block evaluates to false, then stops (you may not find a perfectly working 
# 	option for the hash, and that's okay).

array_of_numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hash_of_numbers = {
	0 => "zero",
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six",
	7 => "seven",
	8 => "eight",
	9 => "nine",
	10 => "ten"
}

# 1. A method that iterates through the items, deleting any that 
# meet a certain condition (for example, deleting any numbers that are less than 5).

is_even = array_of_numbers.even?
array_of_numbers.delete_if { |number| number == is_even}
p array_of_numbers














