<form onsubmit="return validateLogin()">
    <input type="text" id="username" placeholder="Username" required>
    <input type="password" id="password" placeholder="Password" required>
    <button type="submit">Login</button>
</form>

<script>
    function validateLogin() {
        const username = document.getElementById("username").value.trim();
        const password = document.getElementById("password").value.trim();

        if (username === "") {
            alert("Username cannot be empty");
            return false;
        }

        if (username.length < 4) {
            alert("Username must be at least 4 characters");
            return false;
        }

        if (password === "") {
            alert("Password cannot be empty");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters");
            return false;
        }

        alert("Login successful (validation passed)");
        return true; // allow form submission
    }
</script>