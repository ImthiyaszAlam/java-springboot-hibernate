var colorArray = ["red" ,"yellow","green"];
var i =0;
function trafficSystem(){
    var l = document.getElementsByClassName("light");
    for(var j=0; j<l.length; j++){
        l[j].style.background="yellow";
    }
}

setInterval(trafficSystem,3000)