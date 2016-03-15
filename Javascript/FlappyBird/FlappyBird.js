var myBird;
var myBackground;

function startGame() {
    myBird = new component(60, 50, "gull.gif", 5, 120, "image");
    myBackground = new component(656, 270, "background.png", 0, 0, "image");
    myGameArea.start();
}

var myGameArea = {
    canvas : document.createElement("canvas"),
    start : function() {
        this.canvas.width = 480;
        this.canvas.height = 270;
        this.context = this.canvas.getContext("2d");
        //insert the "canvas" tag at the top of body.
        document.body.insertBefore(this.canvas, document.body.childNodes[0]);
        //this.frameNo = 0; //no idea what this do?
        this.interval = setInterval(updateGameArea, 20);
        },
    clear : function() {
        this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
    },
    stop : function() {
        clearInterval(this.interval);
    }
}

function component(width, height, color, x, y, type) {
    this.type = type;
    if (type == "image") {
        this.image = new Image();
        this.image.src = color;
    }
    this.width = width;
    this.height = height;
    this.speedX = 0;
    this.speedY = 0;    
    this.x = x;
    this.y = y;    
    this.update = function() {
        ctx = myGameArea.context;
        if (type == "image") {
            ctx.drawImage(this.image, 
                this.x, 
                this.y,
                this.width, this.height);
        } else {
            ctx.fillStyle = color;
            ctx.fillRect(this.x, this.y, this.width, this.height);
        }
    }
    this.newPos = function() {
        this.x += this.speedX;
        this.y += this.speedY;        
    }    
}

function updateGameArea() {
    myGameArea.clear();
    myBackground.newPos();    
    myBackground.update();
    myBird.newPos();    
    myBird.update();
}

function move(dir) {
    myBird.image.src = "gull.gif";
    if (dir == "up") {myBird.speedY = -1; }
    if (dir == "down") {myBird.speedY = 1; }
    if (dir == "left") {myBird.speedX = -1; }
    if (dir == "right") {myBird.speedX = 1; }
}

function clearmove() {
    myBird.image.src = "gull.gif";
    myBird.speedX = 0; 
    myBird.speedY = 0; 
}
