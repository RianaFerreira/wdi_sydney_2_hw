/*
Summary
Practice JavaScript syntax, writing JavaScript functions, and using JavaScript arrays

Objectives:
create and use arrays
create and use variables
create and use functions

Activity:
http://itsthisforthat.com/ Inspiration for this exercise.
We're going to recreate a console version of this site.
What does your startup do? Let's practice using arrays to find out!

Write a function called randomThis() that picks a random "This" element from the array
Write a function called randomThat() that picks a random "That" element from the array
Write a function that prints a statement saying: "So.... your startup is basically like a like a this for that?"
It should print a new statement each time the function is called.
*/

this_a = ["sales","development","marketing","farming","presentations","organising"];
that_a = ["arts","culture","political campaigns","crafts","healthcare","lifesaving"];
msg(this_a, that_a)

function msg(this_a, that_a){
  console.log("So..... your startup is basically like a " + randomThis(this_a) + " for " + randomThat(that_a) +"?");
}

function randomThis(this_a){
  return this_a[Math.floor(Math.random() * this_a.length)];
}

function randomThat(that_a){
  return that_a[Math.floor(Math.random() * that_a.length)];
}
