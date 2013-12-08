/*
Create a calculator in JavaScript.

Requirements
Prompt the user to enter an operator and two operands.
Support the following operations: addition, subtraction, multiplication, and division.
Output may appear in the console or in an alert.

Bonus
Support the modulus operator.
Support the square root operator.
Support more than two operands (hint: array)

Alternate JavaScript Calculator
*/

var operator = prompt("Enter an operator");
var operand1 = parseInt(prompt("Enter an operand"));
var operand2 = parseInt(prompt("Enter another operand"));
calculator(operator, operand1, operand2);

function calculator(operator, operand1, operand2){
  if (operator === '+'){
    alert(operand1 + " + " + operand2 + " = " + (operand1 + operand2));
  } else if ( operator === '-'){
    alert(operand1 + " - " + operand2 + " = " + (operand1 - operand2));
  } else if ( operator === '*'){
    alert(operand1 + " * " + operand2 + " = " + (operand1 * operand2));
  }  else if ( operator === '\u221A'){
    alert(operand1 + " * " + operand1 + " = " + (operand1 * operand1));
  }else if (operator === '/'){
      if (operand1 > 0){
        alert(operand1 + " / " + operand2 + " = " + (operand1 / operand2));
      }else {
        console.log("Can not divide by zero.");
      }
  } else if (operator === '%'){
    alert(operand1 + " % " + operand2 + " = " + (operand1 % operand2));
  } else {
    console.log("Invalid operator");
  }
}