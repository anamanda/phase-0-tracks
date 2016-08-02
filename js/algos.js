// write a function that takes has an array parameter
// create an empty variable that will hold the longest word
// loop through the array with a for loop, going from 0 to the end of the array
// if the next word is longer than the previous word, replace it with the longer word
// go through the whole array replacing smaller word with longer word


// declare longestWord function that takes in an array
function longestWord(wordArray) {

  // create empty variable to hold the longest word
  var longestWord = "";

  // create a loop that goes through the array
  // replace previous word with current word if current word is longer than previous word
  for (i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longestWord.length)
      longestWord = wordArray[i]
  };

  // return longestWord
  return longestWord;
};

// Driver Code to test longestWord function
console.log(longestWord(["amanda", "is", "my", "name"])); // should return amanda
console.log(longestWord(["my", "name", "is", "amanda"])); // should return amanda
console.log(longestWord(["i", "love", "coding", "lots"])); // should return coding

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

// write function that takes two objects as parameters
// for each property in the object1,
// and for each key in object2,
// check property and value of both objects against each other
// if there is a match, create a variable called match and set it equal to true
// if match is equal to true, print match to the console
// otherwise, print false to the console

// declare 3 objects as test variables
var object1 = {name: "Steve", age: 53, location: "USA"};
var object2 = {name: "Sally", age: 54, location: "UK"};
var object3 = {name: "Amanda", age: 24, location: "USA"}

// declare function that takes in two objects to compare
function objectMatch(obj1, obj2) {

  // loop through obj1, and subsequently obj2 while looping through obj1
  for (var prop in obj1) {
    for (var key in obj2) {

      // if the property and value of obj1 = property and value of obj2
      // create a variable called match and set it equal to true
      if (prop + obj1[prop] == key + obj2[key])
        var match = true;
    };
  };

  // if match == true, print match to the console
  if (match == true) {
    console.log(match)
  }

  // otherwise, print false to the console
  else {
    console.log(false)
  };
};

// Driver Code
objectMatch(object1, object2) // should return false
objectMatch(object1, object3) // should return true





