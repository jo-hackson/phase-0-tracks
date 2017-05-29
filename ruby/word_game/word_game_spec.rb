require_relative 'word.game'

# going to test with the word "llama"
describe WordGame do
	let(:game) { WordGame.new }

	# pass
	describe "creating a new instance of WordGame, or creating a new game for user" do
		it "returns a new game object" do
			expect(WordGame.new).to be_an_instance_of WordGame
		end
	end

	# pass
	describe "print spaces equivalent to number of spaces" do
		before(:each) do
			game.game_word = "llama"
			game.current_state = []
		end

		it "print spaces equivalent to the number of spaces in mystery word" do
			expect(game.current_state_setter).to eq(" _  _  _  _  _ ")
		end
	end

	# pass
	describe "collection_of_guesses" do
		before(:all) do
			@guess_array = []
			@game_word = "llama"
		end

		it "adds letters that have been guessed to the guess array" do
			expect(game.collection_of_guesses("a")).to eq(["a"])
		end
	end

	# unable to pass
	describe "presence_of_letter" do
		before(:each) do
			game.game_word = "llama"
			game.current_state = [" _ "," _ ", "a"," _ ", "a"]
		end

		it "will prompt user that the letter they guessed is present in their mystery word" do
			expect(game.presence_of_letter("a")).to eq(" _  _ a _ a")
		end

		it "will prompt user that the letter they guessed is not present in their mystery word" do
			expect(game.presence_of_letter("b")).to eq("Too bad!")
		end
	end

	# unable to pass
	describe "loop_through" do

		before(:each) do
			game.word_selector
			game.current_state_setter
			@game_word = "llama"
			p @game_word
			@total_guesses = @game_word.length.to_i * 2 
		end

		it "will keep looping while there are spaces or guesses available" do
			letter_input = "a"
			expect(game.loop_through).to eq("")
		end

		it "will prompt user to hurry with 5 guesses remaining" do
			@total_guesses == 5
			expect(game.loop_through).to eq("Hurry! You have 5 more guesses left!")
			end

		it "prompt user to input letter guess" do
			@total_guesses > -1
			expect(gsame.loop_through).to eq("Hurry! You have 5 more guesses left!")
		end
	end

 	# pass
  	describe "congrats or taunt messaging" do

		it "puts a taunt message if there are spaces remaining in the answer" do
			game.word_selector
			game.current_state_setter
			game.loop_through
			game.congrats_or_taunt
			expect(game.congrats_or_taunt).to eq("Aw man, you didn't get it this time!")
		end

		it "puts a congratulatory message if user guesses all the letters before time runs out" do
			game.word_selector
			game.current_state_setter
			game.loop_through
			game.congrats_or_taunt
			expect(game.congrats_or_taunt).to eq("Woot woot! You're a hangman expert now!")
		end
	end
end