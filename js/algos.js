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

biggestWord(["long","longest","longer"]) 

// ____________________________________________________________

Release 1: Find a Key-Value Match