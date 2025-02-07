let input = document.getElementById("inputDisplay");
let buttons = document.querySelectorAll("button");

let string = ""; // Initialize the string variable to store input

buttons.forEach(button => {
    button.addEventListener('click', (e) => {
        if (e.target.innerHTML === '=') {
            string = eval(string);
            input.value = string;
        } else {
            string += e.target.innerHTML;
            input.value = string; // Update input field with current string
        }
    });
});
