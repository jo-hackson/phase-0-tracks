puts "Enter a full name: "
name_input = gets.chomp

def alias_maker(name_input)

# method to change the letter depending on
# if it is a vowel or consonant
# input a character
# output the next character
	def change_letter(char)
		char = char.downcase
		vowel = "aeiou"
		consonant = "bcdfghjklmnpqrstvwxyz"

		if char == " "
			" "
		elsif char == "z"
			"a"
		elsif vowel.index(char) == nil && consonant.index(char) == nil
			char
		elsif vowel.index(char) == nil
		# if the char does not match with one of the values in vowel
			con_position = consonant.index(char).next
			new_con = consonant[con_position]
			new_con
			# puts "con"
		else
			vowel_position = vowel.index(char).next
			new_vowel = vowel[vowel_position]
			new_vowel
			# puts "vow"
		end
	end

end
