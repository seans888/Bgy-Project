
function toggle() {
	var div = document.getElementById('ul');
    var w = window.innerWidth;//Browser's Width
    if (div.style.visibility != 'hidden') {
        div.style.visibility = 'hidden';
        div.style.display = 'none';
    }
    else {
        div.style.visibility = 'visible';
        div.style.display = 'block';
    }

        if(w >= 900){
        div.style.visibility = 'visible';
        div.style.display = 'block';
        }
	
}


function limit(){
    var limitcount =4;
    var limitid;
    var bb = document.getElementsByClassName("bulletin-board");
    var limitnum = bb.length;
    while(limitcount<limitnum){
        limitcount++;
        limitid = document.getElementById("board" + limitcount);
        limitid.style.display = "none";
    }
}


function slide(){
  
  
}

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("event-slide");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}


/*
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("eventmain");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}*/