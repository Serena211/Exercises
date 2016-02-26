/*
Search my name from a text. 
Keep the position of my name in hits[]
*/
var text = "Blah blah blah blah blah blah Wlala \
blah blah blah Wlala blah blah Eric blah blah \
blah Wlala blah blah blah Eric";
var myName = "blah";
var hits = [];
for(var i = 0; i < text.length + 1; i++) {
    if (text.substring(i,i+myName.length) === myName) {
        hits.push(i);
        //for debug:
        //console.log(text.substring(i,i+myName.length));
        //console.log(hits);
    }
}
if (hits.length === 0) {
    console.log("Your name wasn't found!");
} else {
    for (h in hits) {
        console.log(hits[h] + " " + myName);
    }  
}
