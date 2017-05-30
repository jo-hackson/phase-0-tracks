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