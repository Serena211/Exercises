<!DOCTYPE html>
<html>
<body>

<p>This is used to show how "setInterval" and "clearInterval" work.</p>

<p id="demo"></p>

<button onclick="myStopFunction()">Stop time</button>
<button onclick="myStartFunction()">Start time</button>

<script>
var myVar = setInterval(function(){ myTimer() }, 1000);

function myTimer() {
    var d = new Date();
    var t = d.toLocaleTimeString();
    document.getElementById("demo").innerHTML = t;
}

function myStopFunction() {
    clearInterval(myVar);
}

//Question: Have other way to write this function? EXCEPT reasign.
function myStartFunction() {
    myVar = setInterval(function(){ myTimer() }, 1000);
}
</script>

</body>
</html>
