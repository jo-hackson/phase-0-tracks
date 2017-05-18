def alias_maker(user_input)
	swapped_name = swap_name_position(user_input)
	new_name = alias_creation(swapped_name)
	formal_new_name = capitalize(new_name)
	"Your original name #{user_input}. Your new alias is #{formal_new_name}"
end

# Swap the first and last name positions
# .downcase 
# split accoridng to space
# swap array indexes
# change to string
def swap_name_position(input)
	# input "Jo Ma"
	input = input.downcase
	split_name = input.split(" ") #=> automatically split by a space
	swap_name = split_name[1], split_name[0] #=> can also use .reverse
	swap_name = swap_name.join(" ")
	#=> input.downcase.split.reverse.join
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
  input = input.split.each {|word| word.capitalize!}
  input = input.join(" ")
  # input.split.map(&:capitalize).join(" ")
  # input.map {|x| x.capitalize} => using .map instead
  # .map returns the change in new array, .each returns the original array
  # &: passing method to function
end

#=> input Array of names
#=> ["Jo Jackson", "Wesley Jacson", "Flo Rida"]
# def alias_maker(user_input)
# 	# user_input = array[0..-1]
# 	# p user_input + "Hello"
# 	swapped_name = swap_name_position(user_input)
# 	new_name = alias_creation(swapped_name)
# 	formal_new_name = capitalize(new_name)
# 	"Your original name #{user_input}. Your new alias is #{formal_new_name}"
# end

# Provide a user interface that lets a user enter a name 
# and get a fake name back. Let the user do this repeatedly 
# until they decide to quit by typing 'quit'. 
# (They might just hit Enter to continue.)



array = Array.new

puts "Please enter a full name: "
user_response = gets.chomp
array << user_response

until user_response == "quit"
	puts "Please enter another full name or type 'quit': "
	user_response = gets.chomp
	array << user_response unless user_response == "quit"
	#=> ["Jo Jackson", "Wesley Jacson", "Flo Rida"]
	#=> output Array of names
	# array.each { |user_response| alias_maker(user_response)}
end 

word_count = 0
while word_count < array.length
	p alias_maker(array[word_count])
	word_count += 1
end





