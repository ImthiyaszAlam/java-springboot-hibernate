const slider = document.querySelector('.slider');
let isDragging = false;
let startPos = 0;
let currentTranslate = 0;
let prevTranslate = 0;

slider.addEventListener('mousedown', e => {
    isDragging = true;
    startPos = e.clientX;
    slider.style.cursor = 'grabbing';
});

slider.addEventListener('mouseup', () => {
    isDragging = false;
    slider.style.cursor = 'grab';
    checkSlidePosition();
});

slider.addEventListener('mousemove', e => {
    if (isDragging) {
        const currentPosition = e.clientX;
        currentTranslate = prevTranslate + currentPosition - startPos;
        updateSlidePosition();
    }
});

function updateSlidePosition() {
    const slides = document.querySelectorAll('.slide');
    slides.forEach((slide, index) => {
        slide.style.transform = `translateX(${currentTranslate}px)`;
    });
}

function checkSlidePosition() {
    const slideWidth = slider.offsetWidth;
    const slideIndex = Math.round(currentTranslate / slideWidth);

    prevTranslate = slideIndex * slideWidth;
    currentTranslate = prevTranslate;
    updateSlidePosition();
}
