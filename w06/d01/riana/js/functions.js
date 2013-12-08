/*
Create an array that contains a few of your favorite things
(fruits, vegetables, colors, sports teams, whatever).
Write some code that outputs strings like (for an array of arbitrary length):
My #1 favorite baseball team is the New York Mets.
My #2 favorite baseball team is the San Francisco Giants.

Bonus - change the output to:
My 1st favorite baseball team is the New York Mets.
My 2nd favorite baseball team is the San Francisco Giants.
*/
var favs = ["kitten","puppy","elephant","chameleon","tortoise","giraffe","dragonfly"];
var thing = "animal";
my_favorite_things(favs, thing)
function my_favorite_things(array, thing){
  for(var i = 0; i < array.length; i++){
    console.log("My #" + (i + 1) + " favorite " + thing + ": " + favs[i]);
  }
}
/*
Check the results of assignGrade function from the conditionals exercise
for every value from 60 to 100 - show "For 89, you got a B. For 90, you got an A."
*/
for (var i = 60; i <= 100; i++){
  if(i >= 80 && i <= 100) {
    console.log("For " + i + ", you got an A");
  } else if(i >= 70 && i < 80) {
    console.log("For " + i + ", you got a B");
  } else if(i >= 60 && i < 70) {
    console.log("For " + i + ", you got a C");
  }
}

/*
Write a for loop that will iterate from 0 to 10. For each iteration of the for loop,
it will multiply the number by 9 and log the result (e.g. "2 * 9 = 18").
Bonus: Use a nested for loop to show the tables for every multiplier from 1 to 10 (100 results total).
*/
for (var i = 0; i <= 10; i++){
  for (var j = 1; j <= 10; j++){
    console.log(i + " * " + j + " = " + (j * i));
  }
}
/*
Write a for loop that will iterate from 0 to 20. For each iteration,
it will check if the current number is even or odd, and report that to the screen (e.g. "2 is even").
*/
for (var i = 0; i <= 20; i++){
  if(i % 2 === 0){
    console.log(i + " is even.");
  } else {
    console.log(i + " is odd.");
  }
}

/* Functions and flow
Why pay a fortune teller when you can just program your fortune yourself?
Write a function named tellFortune that:
takes 4 arguments: number of children, partner's name, geographic location, job title.
outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
Call that function 3 times with 3 different values for the arguments.
*/
function fortune(kids, partner, loc, job){
  console.log("You will be a " + job + " in " + loc + ", and married to " + partner + " with " + kids + " kids.")
}

/*
Forgot how old you are? Calculate it!
Write a function named calculateAge that:
takes 2 arguments: birth year, current year.
calculates the 2 possible ages based on those years.
outputs the result to the screen like so: "You are either NN or NN"
Call the function three times with different sets of values.
Bonus: Figure out how to get the current year in JavaScript instead of passing it in.
*/
function age(curr_year, birth){
  console.log("They are either " + (curr_year - birth) + " or " + (curr_year - birth - 1));
}

/*
Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!
Write a function named calculateSupply that:
takes 2 arguments: age, amount per day.
calculates the amount consumed for rest of the life (based on a constant max age).
outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
Call that function three times, passing in different values each time.
Bonus: Accept floating point values for amount per day, and round the result to a round numbe
*/
function lifetime(age, daily, max_age){
  console.log("You will need " + (daily * (max_age - age)) + " to last you until the ripe old age of" + max_age);
}

/*
Create 2 functions that calculate properties of a circle, using the definitions here.
Create a function called calcCircumfrence:
Pass the radius to the function.
Calculate the circumference based on the radius, and output "The circumference is NN".
Create a function called calcArea:
Pass the radius to the function.
Calculate the area based on the radius, and output "The area is NN".
*/
function geometrizer(radius){
  console.log("The circumference is " + (radius * radius));
  console.log("The area is " + (radius * Math.PI));
}

/*
It's hot out! Let's make a converter based on the steps here.
Create a function called celsiusToFahrenheit:
Store a celsius temperature into a variable.
Convert it to fahrenheit and output "NN°C is NN°F".
Create a function called fahrenheitToCelsius:
Now store a fahrenheit temperature into a variable.
Convert it to celsius and output "NN°F is NN°C."
*/
function temp(celsius, fahrenheit){
  console.log(celsius + "°C is " + (((celsius * 9) / 5) + 32) + "°F");
  console.log(fahrenheit + "°F is " + (((fahrenheit - 32) * 5) / 9) + "°C");
}

/*
Write a function named greaterNum that:
takes 2 arguments, both numbers.
returns whichever number is the greater (higher) number.
Call that function 2 times with different number pairs, and log the output to make sure it works
(e.g. "The greater number of 5 and 10 is 10.").
*/
function greaterNum(num1, num2){
  if(num1 > num2){
    console.log(num1);
  } else {
    console.log(num2);
  }
}

/*
Write a function named helloWorld that:
takes 1 argument, a language code (e.g. "es", "de", "en")
returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
Call that function for each of the supported languages and log the result to make sure it works.
*/
function helloWorld(lang){
  if(lang === "af"){
    console.log("Hello Werld");
  } else if(lang === "pt"){
    console.log("Olá Mundo");
  } else if(lang === "it"){
    console.log("Ciao Mondo");
  } else {
    console.log("Hello World");
  }
}

/*
Write a function named assignGrade that:
takes 1 argument, a number score.
returns a grade for the score, either "A", "B", "C", "D", or "F".
Call that function for a few different scores and log the result to make sure it works.
*/
function assignGrade(score){
  if(score >= 80 && score <= 100) {
      console.log("A");
  } else if(score >= 70 && score < 80) {
      console.log("B");
  } else if(score >= 60 && score < 70) {
      console.log("C");
  } else if(score >= 50 && score < 60) {
        console.log("D");
  } else if(score >= 40 && score < 50) {
        console.log("F");
  } else {
        console.log("Invalid score")
  }
}

/*
Write a function named pluralize that:
takes 2 arguments, a noun and a number.
returns the number and pluralized form, like "5 cats" or "1 dog".
Call that function for a few different scores and log the result to make sure it works.
Bonus: Make it handle a few collective nouns like "sheep" and "geese".
*/
function pluralize(noun, num){
  if (num < 2 || noun.slice(-1) === "s"){
    console.log(num + " " + noun);
  } else if (num > 1){
    console.log(num + " " + noun + "s");
  }else {
    console.log("You make me think to hard!");
  }

}

pluralize("cat", 2);
assignGrade(80);
helloWorld("pt");
greaterNum(3,2);
temp(20, 50);
geometrizer(10);
age(new Date().getFullYear(), 1979);
fortune(2, "Mr Rogers", "Sydney", "Business Analyst");