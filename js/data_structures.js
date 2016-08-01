// declare colors and names arrays
var colors = ["blue", "orange", "green", "red"];
var names = ["Smokey", "Patches", "Captain", "Trotty"];

// add purple to colors array
colors.push("purple");

// add Maney to names array
names.push("Maney");

// print colors and names arrays to console
console.log(colors);
console.log(names);

// create an empty object
var horses = {};

// loop through the arrays and set key value pairs for the object
for (var i = 0; i < colors.length; i++) {
    horseNames = names[i];
    horseColor = colors[i];
    horses[horseNames] = horseColor;
};

// print horses object
console.log(horses);

//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////

// create new constructor function with model, color, and isNew parameters
function Car(model, color, isNew) {
  console.log("This is our new car!", this);

  // create model, color, and isNew variables
  this.model = model;
  this.color = color;
  this.isNew = isNew;

  // create drive function
  this.drive = function() { console.log("Vroom vroom!"); };

  console.log("CAR INITIALIZATION COMPLETE");

};

// Driver Code

// declare an instance of the Car constructor function
var aCar = new Car("Civic", "green", true);
console.log(aCar);
console.log("We're gonna go for a ride now!");

// call drive function on instance
aCar.drive();

// print this car is so shiny if it's new
if (aCar.isNew) {
  console.log("This car is so shiny!!!!!!!!!!!!");
};

// declare another car instance
var anotherCar = new Car("Accord", "white", false);
console.log(anotherCar);

// print this car isn't shiny anymore if it's not new
if (!anotherCar.isNew) {
  console.log("This car isn't shiny anymore.");
};

// declare another car instance
var yetAnotherCar = new Car("Wrangler", "red", true);
console.log(yetAnotherCar);

// set isNew equal to false
yetAnotherCar.isNew = false;
console.log(yetAnotherCar);


