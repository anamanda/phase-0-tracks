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