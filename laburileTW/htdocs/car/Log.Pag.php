<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/icon.png"/>
    <title>Inregistrare</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2c0134;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-container {
            background: linear-gradient(to bottom right, Black, #aa51ba);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 90px;
            width: 600px;
            max-width: 100%;
            text-align: center;
            margin-top: 150px; /* Adaugă un spațiu pentru a evita suprapunerea */
        }

        .form-container h2 {
            margin-bottom: 30px;
            color: #f4f4f4;
        }

        .form-container input[type="text"], 
        .form-container input[type="password"] {
            width: calc(100% - 40px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container button {
            width: calc(100% - 40px);
            background-color: #200226;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #2c0134;
        }
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-image: url(oi.jpeg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 20px;
            z-index: 1000;
        }

        .meniu {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 40px;
            font-weight: bold;
            font-family: 'Cooper Black', sans-serif;
        }

        .top_meniu ul {
            list-style: none;
            display: flex;
        }

        .top_meniu li {
            margin-right: 40px;
            transition: background-color 0.3s ease-in-out;
        }

        .top_meniu a {
            text-decoration: none;
            color: #fff;
            padding: 10px;
            border-radius: 15px;
            display: inline-block;
            font-family: 'Cooper Black', sans-serif;
            font-size: 16px;
            font-weight: bold;
            transition: transform 0.3s ease-in-out, font-size 0.3s ease-in-out;
        }

        .top_meniu li:hover {
            background-color: rgba(51, 51, 51, 0.7);
        }

        .top_meniu li:hover a {
            transform: scale(1);
            font-size: 18px;
        }

        .alla {
            color: #fff;
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>
<header>
    <div class="meniu">
        <div class="top_meniu">
            <ul>
                <li><a href="Log.Pag.php">Log In</a></li>
                <li><a href="Registratura.php">Register</a></li>
            </ul>
        </div>
    </div>
</header>
<main>
    <div class="form-container">

        <form id="registerForm" action="register.php" method="post">
            <!-- Add registration fields here -->
        </form>
        <h2>Login</h2>
        <form id="loginForm" action="auth.php" method="post">
            <input type="text" placeholder="Username" name="login">
            <input type="password" placeholder="Password" name="pass">
            <button type="submit">Login</button>
        </form>
        <br>
        <br>
        <div class="form" id="loginResponse"></div>
    </div>
</main>
</body>
</html>
<script>
    document.getElementById("registerForm").addEventListener("submit", function(event) {
        event.preventDefault();

        var formData = new FormData(this);
        var xhr = new XMLHttpRequest();

        xhr.open("POST", "register.php", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    document.getElementById("registrationResponse").innerHTML = xhr.responseText;
                } else {
                    console.error("Error occurred while processing the request.");
                }
            }
        };

        xhr.send(formData);
    });

    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();

        var formData = new FormData(this);
        var xhr = new XMLHttpRequest();

        xhr.open("POST", "auth.php", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    document.getElementById("loginResponse").innerHTML = xhr.responseText;
                } else {
                    console.error("Error occurred while processing the request.");
                }
            }
        };
        xhr.send(formData);
    });
</script>
