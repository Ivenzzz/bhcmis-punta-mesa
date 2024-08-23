document.addEventListener('DOMContentLoaded', () => {
    prefillUsernameFromCookies();
    addLoginButtonListener();
    addTogglePasswordListener();
});

// Function to prefill input fields from cookies
function prefillUsernameFromCookies() {
    const cookies = document.cookie.split('; ').reduce((acc, cookie) => {
        const [name, value] = cookie.split('=');
        acc[name] = value;
        return acc;
    }, {});

    if (cookies.username) {
        document.getElementById('username').value = cookies.username;
    }
}

// Function to add event listener for the login button
function addLoginButtonListener() {
    document.getElementById('loginButton').addEventListener('click', async function() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const rememberMe = document.getElementById('remember_me').checked;
        const formData = new FormData();

        formData.append('username', username);
        formData.append('password', password);
        formData.append('remember', rememberMe);

        try {
            const response = await fetch('./app/controllers/login.php', {
                method: 'POST',
                body: formData
            });

            const data = await response.json();

            if (data.status === 'success') {
                // Redirect based on role
                redirectToDashboard(data.role);
            } else {
                displayErrorMessage(data.message);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    });
}

// Function to redirect based on user role
function redirectToDashboard(role) {
    switch (role) {
        case 'admin':
            window.location.href = '/bhcmis/admin';
            break;
        case 'resident':
            window.location.href = '/bhcmis/resident-dashboard';
            break;
        default:
            window.location.href = 'default_dashboard.php';
            break;
    }
}

// Function to display error message
function displayErrorMessage(message) {
    const errorDiv = document.querySelector('.error-login');
    errorDiv.textContent = message;
    errorDiv.classList.remove('d-none');
}

// Function to add event listener for the password toggle
function addTogglePasswordListener() {
    document.getElementById('togglePassword').addEventListener('click', function() {
        const passwordInput = document.getElementById('password');
        const eyeIcon = this;

        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            eyeIcon.classList.remove('fa-eye');
            eyeIcon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            eyeIcon.classList.remove('fa-eye-slash');
            eyeIcon.classList.add('fa-eye');
        }
    });
}
