var colors = ["blue", "pink", "red", "purple"];
var names = ["Erika", "Joanna", "Henry", "Wesley"];

colors.push("yellow");
names.push("Andrew");

console.log(colors);
console.log(names);

// check if arrays are same length
if (colors.length == names.length); {
  // create object that will take names as key and color as value
  var create_horse = {}
    for (var i = 0; i < colors.length; i++){
      create_horse[names[i]] = colors[i];
    }
}

console.log(create_horse);

// create function for a car
function Car(brand, color, capacity, is_new){
  console.log("Here is your new car:")

  this.brand = brand;
  this.color = color;
  this.capacity = capacity;
  this.is_new = is_new;

  if (this.is_new) {
    this.is_new = "new"
  } else {
    this.is_new = "used"
  }


  this.print_car = function(){console.log("Your " + this.is_new + " " + this.brand + " is " + this.color + " and can seat " + this.capacity + " people.");};
  this.honk = function() {console.log("Honk!");};
}

var firstCar = new Car("Toyota", "white", 5, true);
firstCar.print_car();
console.log("Honk test....");
firstCar.honk();
console.log("CAR BUILD COMPLETE");
console.log("--------------");

var secondCar = new Car("Ford", "black", 6, false);
secondCar.print_car();
console.log("Honk test....");
secondCar.honk();
console.log("CAR BUILD COMPLETE");
console.log("--------------");