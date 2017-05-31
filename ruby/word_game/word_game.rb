# guess word game

class WordGame

	# game_word will not change at all throughout the game
	# attr_reader 
	attr_accessor :current_state, :presence_counter, :total_guesses, :guess_count, :game_word 

	# create an array of words for guessing
	# establish empty array for @current_state and @guess_array
	def initialize
		@word = ["buffalo", "llama", "kangaroo", "elephant", "aardvark", "orangutan", "hyena"]
		@current_state = []
		@guess_array = []
	end

	# create a method to randomly select a word
	# create a new variable so that length will refer to specific word that was 
	# randomly chosen for this game
	def word_selector
		@game_word = @word.sample
	end

	# create a method to find the length of the random word
	# and print that many "_"
	def current_state_setter
		puts "Here is your mystery word: "
		length = @game_word.length.to_i
		@current_state = Array.new(length, " _ ")
		@current_state.join
	end

	# method to check if the letter entered by user
	# is present in the game word
	# puts statement to give user feedback
	# input @presence_counter to alert user how many times letter appears
	# print progress to user
	# print @total_guesses to let user know how many guesses remain
	def presence_of_letter(user_guess)
		if @game_word.include? user_guess 
			puts "Nice! Your letter appears #{@presence_counter} times. Here is an update on your progress: "
			p @current_state.join
			# return @current_state.join
		else
			puts "Too bad! \"#{user_guess}\" is not in the mystery word! Here is your progress so far: "
			p @current_state.join
			# return "Too bad!"
		end

		if @current_state.include?(" _ " )
			puts "You have #{@total_guesses} guesses remaining."
		end
	end

	# array of guesses to check for duplicate entries
	# if repeat, feedback to user that there is a repeat
	# repeat guesses do not count against user
	def collection_of_guesses(letter_guess)
		if @guess_array.include? (letter_guess)
			puts "You already guessed that!"
			@total_guesses += 1
		else
			@guess_array << letter_guess
		end
	end

	# method that goes through each letter and see if it matches with @game_word
	# if it matches, then replace _ with the letter
	# if it does not match, then keep _
	# update @presence_counter to notify user how many letters present
	# call collection_of_guesses method to check if there are duplicate entries
	def letter_checker(letter_guess)
		@presence_counter = 0
		@game_word.split("").each_index { |index|
		if @game_word[index] == letter_guess
			@current_state[index] = "#{ letter_guess }"
			@presence_counter += 1
		end
		}
		collection_of_guesses(letter_guess)
	end

	# loop through game until all letters are guessed or no more guesses remain
	# limit guesses to double the amount of letters in @game_word
	# want to have an introductory statement to open the game
	# want to alert user there are 5 guesses remaining
	# after each loop, update @total_guesses
	def loop_through
		@total_guesses = @game_word.length.to_i * 2 
		loop do 
			if @total_guesses == @game_word.length.to_i * 2
				p "Let's get started!"
				p "You have #{@total_guesses} guesses in total."
			elsif @total_guesses == 5
				p "Hurry! You have 5 more guesses left!"
			end
			
			puts "Guess a letter: "
			letter_input = STDIN.gets.chomp
			letter_checker(letter_input)
			presence_of_letter(letter_input)

			@total_guesses -= 1

			break if !@current_state.include?(" _ ") || @total_guesses == -1
		end
	end

	# once the game ends puts a statement according to result
	def congrats_or_taunt
		if @current_state.include?(" _ ")
			p "Aw man, you didn't get it this time!"
		else
			p "Woot woot! You're a hangman expert now!"
		end
	end

end

# puts "Welcome to the \"Animal Kingdom Word Guessing Game!\""
# game = WordGame.new
# game.word_selector
# p game.current_state_setter
# game.loop_through
# game.congrats_or_taunt

