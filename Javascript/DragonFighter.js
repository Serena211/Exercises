/*
Princess Amy has been kidnapped by a dragon.
Thousand young men heard this and try to fight 
the dragon and save Amy.
*/
var slaying = true;
var youHit = Math.floor(Math.random() * 2);
var damageThisRound = Math.floor(Math.random() * 5 + 1);
var totalDamage = 0;
console.log("Fighter! Kill the dragon! Get your GIRL!");
while(slaying) {
    if (youHit) {
        console.log("Your turn to hit the dragon!");
        totalDamage += damageThisRound;
        console.log("This round dragon lose "+damageThisRound+" lifetime points. The total lifetime is " +(5- totalDamage));
        if(totalDamage >= 4) {
            console.log("You slew the dragon.");
            slaying = false;
        } else {
            console.log("But...the dragon still alive! Hit again");
            youHit = Math.floor(Math.random() * 2);
        }
        console.log("You win! You beat the dragon!");
        slaying = false;
    } else {
        console.log("You even didn't find the chance to hit the dragon! You die!");
        slaying = false;
    }
}
