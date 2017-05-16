puts "Enter a full name: "
original_name = gets.chomp

# def alias_maker

	def swap_names_positions
		split_name = original_name.split(" ")
		
		# swap first and last name positions
		split_name[0], split_name[1] = split_name[1], split_name[0]
		swap_name = split_name[0], split_name[1]
		swap_name
	end

original_name.swap_names_positions

# end






# # # this will separate the letters 
# 	def separate_characters
# 		puts "hello"
# 		index = 0
# 		# container response, add stuff as we go
# 		conversion = ""
# 		while index < original_name.length
# 			# conversion is getting built as the program runs
# 			conversion << @swap_name(original_name[index]).to_s
# 			index += 1
# 		end
# 		conversion
# 	end

# p separate_characters(@swap_name)
# print separate_characters(@swap_name)
# puts separate_characters(@swap_name)


# # method to change the letter depending on
# # if it is a vowel or consonant
# # input a character
# # output the next character
# 	def change_letter(char)
# 		char = char.downcase
# 		vowel = "aeiou"
# 		consonant = "bcdfghjklmnpqrstvwxyz"

# 		if char == " "
# 			" "
# 		elsif char == "z"
# 			"a"
# 		elsif vowel.index(char) == nil && consonant.index(char) == nil
# 			char
# 		elsif vowel.index(char) == nil
# 		# if the char does not match with one of the values in vowel
# 			con_position = consonant.index(char).next
# 			new_con = consonant[con_position]
# 			new_con
# 		else
# 			vowel_position = vowel.index(char).next
# 			new_vowel = vowel[vowel_position]
# 			new_vowel
# 		end

# 	end # end of change_letter method





# end








# end # end of alias_maker method
