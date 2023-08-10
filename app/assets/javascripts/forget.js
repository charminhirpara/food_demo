const form = document.getElementById('forgot-password-form');
const message = document.getElementById('message');

form.addEventListener('submit', function (event) {
    event.preventDefault();
    const email = document.getElementById('email').value;

    // Send the email address to the server using AJAX or fetch API
    // to verify it's a valid email address and reset the password

    message.textContent = "Password reset email sent to " + email;
});