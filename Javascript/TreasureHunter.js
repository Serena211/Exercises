/*
One piece!
*/

var user = prompt("You are a treasure hunter. One day,\
you find an old treasure map. Do you want find the \
treasure with FRIENDS, YOUR DOG, or ALONE?").toUpperCase();

switch(user) {
    case 'FRIENDS':
        console.log("Now you are on the way to find treasure with your friends.");
        var tools = prompt("Do you take adventure tools? (Y or N)").toUpperCase();
        var firstaid = prompt("Do you take first aid equipments? (Y or N)").toUpperCase();
        if (tools === "Y" && firstaid === "Y") {
            console.log("You are a wonderful treasure hunter and leader. \
            Team work is a good way to conquer fears. View this map through\
            the moonlight. You'll find some intersting points. Good luck!");
        } else {
            console.log("It might be hard! Take care!");
        }
        break;
    case 'YOUR DOG':
        console.log("Nice try! Don't forget to take first aid equipments \
        and adventure tools. They absolutely will help you!");
        break;
    case 'ALONE':
        var tools = prompt("Do you take adventure tools? (Y or N)").toUpperCase();
        var firstaid = prompt("Do you take first aid equipments? (Y or N)").toUpperCase();
        if (tools === "N" || firstaid === "N") {
            console.log("Do you really ready to hunt treasure?"); 
        } else {
            console.log("Suprise me!");    
        }
        break;
    default:
        console.log("Hey, go back home and watch TV. Stay in your safe zone.");

}
