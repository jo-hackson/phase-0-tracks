# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# zombie_apocalypse_supplies.each {|x| print x, " * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

# positions = []
# zombie_apocalypse_supplies.each { |supply|
# 	k = 0
# 	count = 0
# 	until k == 8
# 		if supply.downcase > zombie_apocalypse_supplies[k].downcase
# 			count += 1
# 		end
# 	k += 1
# 	end
# 	positions << count	
# }

# arry = []

# j = 0
# until j == 8
# arry[positions[j]] = zombie_apocalypse_supplies[j]
# j += 1
# end
# p arry

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

# def check_supplies(list_of_supplies, supply)
# 	if list_of_supplies.each { |x| 
# 		x == supply
# 	}
# 		puts "You got #{supply}!"
# 	else
# 		puts "Not in supplies."
# 	end
# end

# p check_supplies(zombie_apocalypse_supplies, "boots")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

# five_supplies = []

# i = 0 
# until i == 5
#   five_supplies << zombie_apocalypse_supplies[i]
#   i += 1
# end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

# joint_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).uniq 
# p joint_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

# extinct_animals.each {|key, value| print " #{key}--#{value} *"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

# before_two_thousand = {}

# extinct_animals.each { |animal, year|
# 		if year < 2000
# 			before_two_thousand[animal] = year
#   	end
#   	p before_two_thousand
# }

# p before_two_thousand

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

# p extinct_animals.each { |animal, year| extinct_animals[animal] = year + 3}

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

# def is_extinct(list_of_extinct_animals, animal_in_question)

# extinct = false
#   list_of_extinct_animals.each { |animal, year| 
#   	if animal == animal_in_question
#   	  extinct = true
#   	end 
#     }
    
# 	if extinct
# 	  puts "#{animal_in_question} is extinct"
# 	else
# 	  puts "#{animal_in_question} is not extinct"
# 	end
 
# end

# is_extinct(extinct_animals, "Andean Cat")
# is_extinct(extinct_animals, "Dodo")
# is_extinct(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Tasmanian Tiger is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

# passenger_pigeon = extinct_animals.keys[4], extinct_animals.values[4]
# extinct_animals.delete("Passenger Pigeon")
# p extinct_animals
# p passenger_pigeon

# p extinct_animals.shift
# p extinct_animals

