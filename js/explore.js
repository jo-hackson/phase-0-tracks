// Ruby has lots of handy functions like .reverse, 
// but in JavaScript, we mostly have to write our own. 
// In comments, pseudocode a function that takes a 
// string as a parameter and reverses the string. reverse("hello"), 
// for example, should return "olleh". This isn't a task specific 
// to JavaScript -- your pseudocode should be in plain English and 
// use phrases like "for each" instead of JavaScript-specific terms. 
// Remember that you can add strings in JavaScript, so '' + 'a' would 
// result in the string 'a'. Take your time. This is the most valuable 
// skill in programming: being able to think through a problem logically.

// input: string
// steps: create an empty string and to add letters in descending order to
	// reminder: java is also 0-indexed
	// for each letter, add to string in descending order
// output: string backwards
// add a condition to pass and print string backwards 

function stringBackwards(str){
var string = ""
for (i = str.length-1; i > -1; i--) {
	string += str[i] + "";

}
if (1==1) {
	console.log(string);
} else
	console.log("boohoo")
}

stringBackwards("hello")
stringBackwards("Portugal")
stringBackwards("whoawhoawhoa")
