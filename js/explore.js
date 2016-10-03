// Take a parameter as a string.
// for each letter of the string I want to reverse the order of the string
// each letter should then be put into one string in reverse order one at a time
// the function should stop when all of the letters are in the new string
//the user should be able to see a new string with reversed letters.

function reverse(s) {
  //create a place for the string to be looped into
  var o = '';
  // set the counter backwards so it starts on the last letter of the string. Have the counter work backwards.
  for (var i = s.length - 1; i >= 0; i--)
  // put each letter into the new string variable
    o += s[i];
  //return the string.
  return o;
}

var new_string = reverse("Hello!");

if (1 == 1) {
   console.log(new_string);
}
else {
  console.log("Whoops!");
}
