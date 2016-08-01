var colors = ["blue", "orange", "green", "red"];
var names = ["Smokey", "Patches", "Captain", "Trotty"];

colors.push("purple");
names.push("Maney");

console.log(colors);
console.log(names);

var horses = {};
for (var i = 0; i < colors.length; i++) {
    horseNames = names[i];
    horseColor = colors[i];
    horses[horseNames] = horseColor;
};

console.log(horses);

//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////

function Car(model, color, isNew) {
  console.log("This is our new car!", this);

  this.model = model;
  this.color = color;
  this.isNew = isNew;

  this.drive = function() { console.log("Vroom vroom!"); };

  console.log("CAR INITIALIZATION COMPLETE");

}

var aCar = new Car("Civic", "green", true);
console.log(aCar);
console.log("We're gonna go for a ride now!");
aCar.drive()





