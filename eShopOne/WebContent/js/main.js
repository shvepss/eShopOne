var slideIndex = 1;
showSlides();

// showDivs(slideIndex);

function plusDivs(n) {
	showDivs(slideIndex += n);
}

function currentDiv(n) {
	showDivs(slideIndex = n);
} 

function showDivs(n) {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("demo");
	
	if (n > slides.length) {
		slideIndex = 1
	}
	if (n < 1) {
		slideIndex = slides.length
	}
	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" w3-white", "");
	}
	slides[slideIndex - 1].style.display = "block";
	dots[slideIndex - 1].className += " w3-white";
}

// for slide show - DO NOT WORK
 function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
	   alert(i);
    }
    slideIndex++;
    if (slideIndex > slides.length) {
    	slideIndex = 1
    }    
	
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" w3-white", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " w3-white";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
} 


