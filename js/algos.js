// Release 0: Find the Longest Phrase
// input: array of words  
	// hint: use .length
	// steps: compare two words by their lengths and delete the word that is shorter
	// loop through array until length of array = 1
	// then print on console the array in string form
// output: returns the longest word in the array

function biggestWord(input_array) {
	// console.log("input array")
	// console.log(input_array)
	// console.log(input_array[1])
	while (input_array.length!= 1) {
	if (input_array[0].length > input_array[1].length) {
		input_array.splice(1, 1)
	} else {
		input_array.splice(0, 1)
	} 
	}
	console.log(input_array)
}

// biggestWord(["long","longest","longer"]) 

// ____________________________________________________________

// Release 1: Find a Key-Value Match

// input: two objects
// goal: check if objects share at least one key-value pair
// hint: may not have any of the same key
// steps: check if keys match, if not, break and return false
	// if keys match, check if those values match, return true
	// else, return false
	// special note: == checks only if objects are the same instance,
	//		would not work for checking if contents are the same
// output: boolean


function keyValueMatch(object1, object2) {

	var tally = [];

	for (var i = 0; i < Object.keys(object1).length; i++) {

		if (Object.keys(object1)[i] != Object.keys(object2)[i]) {
			tally.push("false");
		} else {
			if (Object.values(object1)[i] == Object.values(object2)[i]) {
				tally.push("true");
			} else {
				tally.push("false");
			}
		} 
	}

		if (tally.includes("true")) {
			console.log("true");
			return true
		} else {
			console.log("false");
			return false
		} 
		}

// keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); // true
// keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //  true
// keyValueMatch({animal: "Cat", legs: 4}, {animal: "Dog", legs: 4}); //  true


// ____________________________________________________________

// Release 2: Generate Random Test Data

// input: length corresponding to how many words to be returned
// tips: generate a randon number
// steps: declare the variable
	// randomly select index to put corresponding value into new array
	// run interger amount of times
	// print the array
	// feed array to longest word function
	// print result
// output: array of strings of the given length

function randomizer(quantity_of_words) {
	
	var word_bank = ["a", "ab", "abc", "abcd", "abcde", "abcdef", "abcdefg", "abcdefgh", "abcdefghi", "abcdefghij"];
	var output_array = [];

	for (var i = 0; i < quantity_of_words; i++) {
	output_array.push(word_bank[Math.floor(Math.random() * 6) + 1]);
	} // for
	console.log("Here is your random word bank: ") + console.log(output_array)
	console.log("Here is the biggest word in your bank: ") + biggestWord(output_array)

} // function


randomizer(2)
randomizer(3)
randomizer(4)
randomizer(5)
randomizer(6)
randomizer(7)
randomizer(8)
randomizer(9)
randomizer(5)
randomizer(4)









