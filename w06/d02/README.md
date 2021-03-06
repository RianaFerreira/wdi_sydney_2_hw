# MTA Lab

##Objective:
* Apply your knowledge of JavaScript to solve a problem we've already tackled in Ruby.

#### Activity
* Create a program that models a simple subway system.

* The program takes the line and stop that a user is getting on at and the line
and stop that user is getting off at and prints the total number of stops for the trip.
* There are 3 subway lines:
  * The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
  * The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
  * The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
  * All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.)


#### Hints:
* Get the program to work for a single line before trying to tackle multiple lines.
* Don't worry about user input. Start off by just hardcoding your stop and line choices in local variables.
* Remember, you've done this in Ruby before. Look at your code and figure out how to do it in JavaScript.
* Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
* Make subway lines are keys in a hash, while the values are an array of all the stops on each line.
* The key to the lab is finding the index positions of each stop.
* Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)


## Geometry

Given the following a `rectangle` object like the one below, write the following functions:

* isSquare - Returns whether the rectangle is a square or not
* area - Calculates the area of the rectangle
* perimeter - Calculates the perimeter of the rectangle

```
var rectangle = {
  length: 4,
  width: 4
};
```

Given the following a `triangle` object like the one below, write the following functions:

* isEquilateral - Returns whether the triangle is equilateral or not
* isIsosceles - Returns whether the triangle is isosceles or not
* area - Calculates the area of the Triangle
* isObtuse - Returns whether the triangle is obtuse or not

```
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};
```