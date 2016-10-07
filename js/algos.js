//function will take an array of words

//function will determine which phrase in the array is the longest

//function will return the phrase that is the longest

// I want the variable to loop through each phrase in the array

// I want the variable to loop through each other phrase and see which one is bigger

function longestPhrase(array) {
  var array = array;
  var largest = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > largest.length) {
      var largest = array[i];
    }
    }
  console.log(largest);
}

longestPhrase(["apple", "zebras", "helecopter"]);
longestPhrase(["keith", "bucket", "dinosaur"]);
longestPhrase(["chimney", "cat", "rabbit"]);