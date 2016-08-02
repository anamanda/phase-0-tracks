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

