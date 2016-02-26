/*
The game story based on Justin Bieber concert by using javascript.

*/

confirm("Are you ready to kick off the game?");
var age = prompt("Old enough for the game?");
if (age < 13) {
    console.log("You're allowed to play but I take no responsibility");    
} else {
    console.log("GoGoGo!");
}
console.log("You are at a Justin Bieber concert, and you hear this lyric 'Lace my shoes off, start racing.'");
console.log("Suddenly, Bieber stops and says, 'Who wants to race me?'");

var userAnswer = prompt("Do you want to race Bieber on stage?  (yes or no)");
if (userAnswer === "yes") {
    console.log("You and Bieber start racing. It's neck and neck! You win by a shoelace!");
} else {
    console.log("Oh no! Bieber shakes his head and sings 'I set a pace, so I can race without pacing.'");
}

var feedback = prompt("Rate me?"); 
if (feedback > 8) {
    console.log("Thank you! We should race at the next concert!");
} else {
    console.log("I'll keep practicing coding and racing.");
}
