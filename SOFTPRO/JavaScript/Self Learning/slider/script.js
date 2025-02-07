const slides = document.querySelectorAll(".slide");
let counter = 0;

const slideImage = () => {
    slides.forEach((slide, index) => {
        slide.style.transform = `translateX(${index - counter}00%)`;
    });
};

const prevImage = () => {
    counter > 0 ? counter-- : (counter = slides.length - 1);
    slideImage();
};

const nextImage = () => {
    counter < slides.length - 1 ? counter++ : (counter = 0);
    slideImage();
};

slideImage(); // To set initial positions
