var canvas = document.getElementById("clock");
var ctx = canvas.getContext("2d");

//set the center position of the clock.
var centrePos = canvas.height / 2;
//Remap the position of the drawing object to the center of the canvas
ctx.translate(centrePos, centrePos);
//get the radius of the clock
radius = centrePos * 0.9;
drawClock();

function drawClock() {
    drawFace(ctx, radius);
    drawNumber(ctx,radius);
    drawCurrentTime(ctx, radius);
}

function drawFace(ctx, radius) {
    //context.arc(x,y,r,sAngle,eAngle,counterclockwise);
    ctx.beginPath();
    ctx.arc(0, 0, radius, 0, 2*Math.PI);
    ctx.fillStyle = "white";
    ctx.fill();
    
    //Use the gradient to fill the clock margin
    var grad = ctx.createRadialGradient(0, 0, radius*0.88, 0, 0, radius*1.08);
    grad.addColorStop(0, "black");
    grad.addColorStop(0.45, "white");
    grad.addColorStop(1, "black");
    
    //Set the grad as the stroke style of canvas;
    ctx.strokeStyle = grad;
    ctx.lineWidth = radius*0.2;
    ctx.stroke();
    
    //Draw a center point of the clock
    ctx.beginPath();
    ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
    ctx.fillStyle = "black";
    ctx.fill();

}

function drawNumber(ctx, radius) {
    var angle;
    var num;
    var x;
    var y;
    ctx.font = radius*0.15 + "px Helvetica";
    //vertical-align
    ctx.textBaseline="middle";
    ctx.textAlign="center";
    for(num= 1; num < 13; num++){
        angle = num * 2* Math.PI / 12;  //360 degree = 2*PI*r
        //set the position of number
        x = Math.sin(angle)*radius*0.8;
        y = -Math.cos(angle)*radius*0.8;
        ctx.fillText(num, x, y);
    }
}

function drawCurrentTime(ctx,radius) {
    var cur = new Date();   //cur stands for current time;
    var hour = cur.getHours()%12;
    var minute = cur.getMinutes();
    var second = cur.getSeconds();
    
    var oneDegree = 2*Math.PI*radius/60;
    var scdPos = second * oneDegree
    var minPos = minute * oneDegree //+ scdPos/60;
    var hourPos = hour * 5 * oneDegree //+ minPos/60;
    //drawHands(ctx, scdPos, radius*0.8, radius*0.05);
    drawHands(ctx, minPos, radius*0.7, radius*0.08);
    drawHands(ctx, hourPos, radius*0.5, radius*0.09);
}

function drawHands(ctx, position, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    //ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.lineTo(Math.sin(position)*length, Math.cos(position)*length);
    ctx.stroke();
}

