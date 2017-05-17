# In phase-0-tracks/ruby/iteration.rb, write your own 
# method that takes a block. Your method should print 
# out a status message before and after running the block. 
# Your block doesn't have to do anything fancy -- it can 
# just print out several of its own parameters.

def favorite_food
	# food1 = "fish"
	# food2 = "beer"
	puts "What is your favorite food?"
	yield("fish", "beer")
end

favorite_food { |food1, food2| puts "I like #{food1} and #{food2}!"}