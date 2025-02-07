


function login(){
// Get the login modal and the login button
var modal = document.getElementById('loginModal');
var loginBtn = document.getElementById('loginBtn');
var closeBtn = document.getElementsByClassName('close')[0];

// Open the modal when the login button is clicked
loginBtn.addEventListener('click', function() {
  modal.style.display = 'block';
});

// Close the modal when the close button (x) is clicked
closeBtn.addEventListener('click', function() {
  modal.style.display = 'none';
});

// Close the modal if the user clicks outside the modal
window.addEventListener('click', function(event) {
  if (event.target == modal) {
    modal.style.display = 'none';
  }
});
}

function signUp(){
    // Get the login modal and the login button
var modal = document.getElementById('loginModal');
var signupBtn = document.getElementById('signupBtn');
var closeBtn = document.getElementsByClassName('close')[0];

// Open the modal when the login button is clicked
signupBtn.addEventListener('click', function() {
  modal.style.display = 'block';
});

// Close the modal when the close button (x) is clicked
closeBtn.addEventListener('click', function() {
  modal.style.display = 'none';
});

// Close the modal if the user clicks outside the modal
window.addEventListener('click', function(event) {
  if (event.target == modal) {
    modal.style.display = 'none';
  }
});
}

// JavaScript to load fragments into the main page

function loadFragment(fragmentUrl) {
    fetch(fragmentUrl)
      .then(response => response.text())
      .then(html => {
        document.getElementById('fragmentContainer').innerHTML = html;
      })
      .catch(error => {
        console.error('Error loading fragment:', error);
      });
  }
  