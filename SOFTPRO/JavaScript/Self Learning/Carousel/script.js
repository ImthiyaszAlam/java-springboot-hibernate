
let currentSlider = 2;

function slideShow(currentSliderNum){
    let slides = document.getElementsByClassName("slide");
    slides[currentSliderNum].style.display="block";

}

slideShow(currentSlider);