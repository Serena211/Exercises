/*
You can new a local variable, which has the same 
name of a global variable. But they are different!!!
*/

var my_number = 7; //this has global scope

var times3 = function(number) {
    var my_number = number * 3; //this has local scope
    console.log("Inside the function my_number is: ");
    console.log(my_number);
}; 

times3(7);

console.log("Outside the function my_number is: ")
console.log(my_number);
