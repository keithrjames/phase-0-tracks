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

function keyValueMatch(object1, object2) {
  var match = false
  for (i in object1){
    for (x in object2){
      if (i == x && object1[i] == object2[x]) {
        var match = true
        break;
      }
    }
  }
    return match
}

function randomArray(array_amount) {
  var array = []
  var random_words = ["kfsjdhfksh", "skjfsdh", "sgkjfhgk", "eoirutoe", "tuerodutkg", "geoijg", "gugo", "kdjfhgiu"]
  for (i = 0; i < array_amount; i++) {
   array[i] = random_words[Math.floor(Math.random()*random_words.length)];
  }
  return array
}


///Driver Code///

// longestPhrase(["apple", "zebras", "helecopter"]);
// longestPhrase(["keith", "bucket", "dinosaur"]);
// longestPhrase(["chimney", "cat", "rabbit"]);



// console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log(keyValueMatch({age: 54, name: "Steven"}, {name: "Tamir", age: 54}));
// console.log(keyValueMatch({salad: "gurt", golf: "Yes"}, {salame: 45, buckets: "All day"}));





console.log(randomArray(2));
longestPhrase(randomArray(2));

console.log(randomArray(6));
longestPhrase(randomArray(6));

console.log(randomArray(8));
longestPhrase(randomArray(8));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

console.log(randomArray(10));
longestPhrase(randomArray(10));

