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

maturity = {
	"apple" => "unripe",
	"orange" => "unripe",
	"banana" => "unripe",
	"plum" => "unripe",
	"pineapple" => "unripe"
}

maturity.each do |fruit, ripeness|
	puts "The #{fruit} is #{ripeness}."
end

maturity.map do |fruit, ripeness|
	ripeness = "ripe"
	puts "Now the #{fruit} is #{ripeness}."
end






