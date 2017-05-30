// write a function that takes an array of words or phrases 
// and returns the longest word or phrase in the array. 
// So if we gave your function the array of 
// ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase". This is a logical 
// reasoning challenge, so try to reason through this based 
// on what you already know, rather than Googling the fanciest 
// solution or looking up built-in sorting functions. 
// Note that "some string".length will do what you expect in JS.


// input: array of words  
	// hint: use .length
	// steps: compare two words by their lengths and delete the word that is shorter
	// loop through array until length of array = 1
	// then print on console the array in string form
// output: returns the longest word in the array

// function biggestWord(input_array){
	function biggestWord(input_array) {
	
	i = 0
	if (input_array[i].length > input_array[i+1].length) {
		input_array.splice(i, i+1)
	} else {
		input_array.splice(i, 1)
	}

	console.log(input_array)

	

} // function


biggestWord(["long","longest","longer"]) // expected output "longest"

