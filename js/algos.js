// Release 0: Find the Longest Phrase
// input: array of words  
	// hint: use .length
	// steps: compare two words by their lengths and delete the word that is shorter
	// loop through array until length of array = 1
	// then print on console the array in string form
// output: returns the longest word in the array

// function biggestWord(input_array){
	function biggestWord(input_array) {

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

	for (var i = 0; i < Object.keys(object1).length; i++) {

		var tally = [];
		console.log(tally);

		if (Object.keys(object1)[i] != Object.keys(object2)[i]) {
			console.log("1");
			tally.push("false");
		} else {
			if (Object.values(object1)[i] == Object.values(object2)[i]) {
				console.log("2");
				tally.push("true");
			} else {
				console.log("3");
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

		

// keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //  true
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); //  true
keyValueMatch({animal: "Cat", legs: 4}, {animal: "Dog", legs: 4}); //  true








