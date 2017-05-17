# Swap the first and last name positions
# .downcase 
# split accoridng to space
# swap array indexes
# change to string
def swap_name_position(input)
	# input "Jo Ma"
	input = input.downcase
	split_name = input.split(" ")
	swap_name = split_name[1], split_name[0]
	swap_name = swap_name.join(" ")
	#=> output "ma jo" String
end

# Method to convert each character according to specifications: 
# changing all of the vowels (a, e, i, o, or u) to the next vowel in 
# 'aeiou', and all of the consonants (everything else besides the vowels) 
# to the next consonant in the alphabet. So 'a' would become 'e', 
# 'u' would become 'a', and 'd' would become 'f'.

def convert_letter(letter)
	vowel = "aeioua"
	consonant = "bcdfghjklmnpqrstvwxyzb"
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	if alphabet.index(letter) == nil
		" "
	elsif vowel.index(letter) != nil
		new_vowel = vowel[vowel.index(letter) + 1]
		new_vowel
	elsif consonant.index(letter) != nil
		new_consonant = consonant[consonant.index(letter) + 1]
		new_consonant
	else
		"there is an error"
	end
end

def alias_creation(input)
	letter_index = 0
	alias_name = ""
	while letter_index < input.length
		alias_name << convert_letter(input[letter_index])
		letter_index += 1
	end
	alias_name
end

def capitalize(input)
  input = input.split(" ").each {|word| word.capitalize!}
  input = input.join(" ")
end

# puts "Please enter your full name: "
# user_input = gets.chomp

def alias_maker(user_input)
	swapped_name = swap_name_position(user_input)
	new_name = alias_creation(swapped_name)
	formal_new_name = capitalize(new_name)
	# p "Your original name #{input}. Your new alias is #{formal_new_name}"
end

p alias_maker("Jo Ma")
