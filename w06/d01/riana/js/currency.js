/*
Objectives:
create and use variables
create and use functions

Find the exchange rate between dollars and pounds

Store the exchange rate in a variable

Converting dollars to pounds:
Store a dollar amount into a variable.
Convert it to pounds and output "$NN is £NN".

Converting pounds to dollars:
Now store a pound amount into a variable.
Convert it to dollar and output "£NN is $NN."

Cleaning it up:
Can you make sure the output is only 2 decimal places?

Refactoring
Can you refactor the code so that it uses functions? Write a function dollarsToPounds that takes a dollar number as input and outputs a string of what the pound equivalent is.
Do the same for poundsToDollars
*/

var aud_gbp_rate = 0.5952;
var gbp_aud_rate = 1.6800;
var buy_amt = 100.00;

dollarsToPounds(aud_gbp_rate, buy_amt);
poundsToDollars(gbp_aud_rate, buy_amt);

function dollarsToPounds(aud_gbp_rate, buy_amt){
  console.log("$" + buy_amt + ' is \u00a3' + aud_gbp_rate.toFixed(2) * buy_amt);
}

function poundsToDollars(gbp_aud_rate, buy_amt){
  console.log('\u00a3' + buy_amt + " is $" + gbp_aud_rate.toFixed(2) * buy_amt);
}