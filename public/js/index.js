document.addEventListener('DOMContentLoaded', () => {
    // Prefill input fields from cookies
    const cookies = document.cookie.split('; ').reduce((acc, cookie) => {
        const [name, value] = cookie.split('=');
        acc[name] = value;
        return acc;
    }, {});

    if (cookies.username) {
        document.getElementById('username').value = cookies.username;
    }

    // Password field should not be prefilled for security reasons
});

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
            switch (data.role) {
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
        } else {
            // Display error message
            const errorMessage = data.message;
            const errorDiv = document.querySelector('.error-login');
            errorDiv.textContent = errorMessage;
            errorDiv.classList.remove('d-none');
        }
    } catch (error) {
        console.error('Error:', error);
    }
});

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
