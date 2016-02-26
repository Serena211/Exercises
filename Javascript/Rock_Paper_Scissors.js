/*
This is "Rock paper scissors" game. 
Two players. 
Each player chooses either rock, paper or scissors. 

The possible outcomes:
Rock destroys scissors.
Scissors cut paper.
Paper covers rock.

This code will break the game into 3 phases:
a. User makes a choice
b. Computer makes a choice
c. A compare function will determine who wins
*/
var userChoice = "";
var computerChoice = "";

var getChoices = function(){
    userChoice = prompt("Do you choose rock, paper or scissors?");
    userChoice = userChoice.toLowerCase();
    while(userChoice !== "rock" && userChoice !== "paper" && userChoice !== "scissors") {
        userChoice = prompt("Only can choose rock, paper or scissors! Choose again!");
    } console.log("User: " + userChoice);
    
    computerChoice = Math.random();
    if (computerChoice <= 1/3) {
    	computerChoice = "rock";
    } else if(computerChoice <= 2/3) {
    	computerChoice = "paper";
    } else {
    	computerChoice = "scissors";
    } console.log("Computer: " + computerChoice);    
};

var compare = function(choice1,choice2) {
    if (choice1 === choice2) {
        var tie = prompt("The result is a tie! Play again? Y o N? ");
        if (tie === "Y") {
            getChoices();
            compare(userChoice, computerChoice);	
        } else {
            return "The result is a tie!";
        }
    } else if (choice1 === "rock") {
        if (choice2 === "scissors") {
            return "rock wins";
        }
        return "paper wins"
    } else if (choice1 === "paper") {
        if (choice2 === "rock") {
            return "paper wins";
        }
        return "scissors wins"
    } else if (choice1 === "scissors") {
        if (choice2 === "rock") {
            return "rock wins";
        }
        return "scissors wins"
    }
};
getChoices();
console.log(compare(userChoice, computerChoice));
