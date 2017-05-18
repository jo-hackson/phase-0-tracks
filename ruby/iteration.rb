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
# meet a certain condition (for example, deleting any numbers that are 
# less than 5).

# delete object if even
# array_of_numbers.delete_if { |index| (array_of_numbers[index] % 2) == 0}
# p array_of_numbers


# delete the key and values of numbers that begin with the letter "t"
# hash_of_numbers.delete_if {|digit, word| word[0] == "t"}
# p hash_of_numbers


# 2. A method that filters a data structure for only items that 
# do satisfy a certain condition (for example, keeping any numbers that 
# are less than 5).

# keep objects that not even
# array_of_numbers.keep_if { |index| (array_of_numbers[index] % 2) != 0}
# p array_of_numbers

# select (or keep) the numbers that are even
# array_of_numbers.select! { |number| number.even? }
# p array_of_numbers

# keep key values that are odd
# hash_of_numbers.keep_if { |digit, word| digit.odd?}
# p hash_of_numbers


# 3. A different method that filters a data structure for only items 
# satisfying a certain condition -- Ruby offers several options!

# rejecting the number if it is less than 5
# array_of_numbers.reject! { |number| number < 5 }
# p array_of_numbers

# keep number less than 6
# hash_of_numbers.select! { |digit, word| digit < 6}
# p hash_of_numbers

# reject if number is less than 6
# new_hash = hash_of_numbers.reject { |digit, word| digit < 6}
# p new_hash


# 4. A method that will remove items from a data structure until the condition 
# in the block evaluates to false, then stops (you may not find a perfectly 
# working option for the hash, and that's okay).

# remove numbers that are less than 5 and place into a new array
# note: if it was number > 5, then the whole array would print again
# because 0 > 5 would return false and the method would stop
# new_array = array_of_numbers.drop_while { |number| number < 5}
# p new_array

# remove numbers that are less than 5 and place into a new hash
# new_hash = hash_of_numbers.drop_while { |digit, word| digit < 5}
# p new_hash






