/*
I've created my own sample list of contacts that I can search through.
list(contacts) to display the contacts
search(name,contacts) input the name you want search and the concact's name.
*/

var friends = {};   // var friends = new Object();
friends.bill = {
    firstName: "Bill",
    lastName: "Eucerin",
    number: "2019129495",    
    address: ['001 Smart Ave','Jersey City','NJ',07307]


};
friends.steve = {
    firstName: "Steve",
    lastName: "Avene",
    number: "2015657890",
    address: ['888 Main St','Jersey City','NJ',07307]
};
friends.john = {
    firstName: "John",
    lastName: "Avene",
    number: "2015654290",
    address: ['423 Main St','Jersey City','NJ',07307]
};
friends.lily = {
    firstName: "Lily",
    lastName: "Avene",
    number: "7035653292",
    address: ['123 Main St','Jersey City','NJ',07307]
};

var list = function(obj) {
    for (var key in obj) {
        console.log(key);
    }
};

var search = function(name,obj) {
    for (var key in obj) {
        if (friends[key].firstName === name) {
            //console.log(friends[key]);
            return friends[key];
        }
    }
};

//Capitalize the first letter
String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
}


list(friends);
var info = search("Steve",friends);
for (var key in info) {
    console.log(key.capitalize() + ": "+info[key]);
}



