// 7.1 Release 4 - Write a JavaScript Program

// Method that takes a string as a parameter and reverses it:
// create empty string to hold reversed string
// declare function that takes string as an argument
// loop from the end of the last letter of the string to the first
// add these letters to the new string
// return the reversed string


// create empty string to hold reversed string
var reversedString = "";

// declare function that takes string as an argument
function reverseString(str) {

  // loop through from last letter to first and add these to new string
  for (var i=str.length-1; i > -1; i--) {
    reversedString = reversedString + str[i];
  }

  // return reversed string
  return reversedString
}

// Driver Code
console.log(reverseString("hello"))