<!DOCTYPE html>
<html lang="ro">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="Reg.css">
    <link rel="icon" type="imagenes" href="news.png">
    <title>CarMax</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 10px;
            z-index: 1000;
        }

        .meniu {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo h1 {
            margin: 0;
        }

        .top_meniu ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .top_meniu li {
            margin-right: 20px;
        }

        .top_meniu a {
            text-decoration: none;
            color: #fff;
        }

        main {
            margin-top: 70px; /* pentru a evita suprapunerea cu header-ul */
            width: 100%;
            display: flex;
            justify-content: center;
        }

        .Registru {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            max-width: 100%;
        }

        .Registru h1, .Registru h3 {
            color: #333;
        }

        .Registru input[type="text"], .Registru input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .Registru button {
            width: 100%;
            background-color: #200226;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .Registru button:hover {
            background-color: #2c0134;
        }

        #error-message {
            color: red;
            font-size: 18px;
            margin-top: 20px;
            text-align: center;
        }

        footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <div class="meniu">
            <div class="logo">
                <a href=""><h1>CarM</h1></a>
            </div>
            <div class="top_meniu">
                <ul>
                    <li><a href="Log.Pag.php">Log In</a></li>
                    <li><a href="Registratura.php">Register</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main>
        <div class="Registru">
            <form action="register.php" method="post" id="registerForm">
                <h1 id="item">Register</h1>
                <h3>Numele</h3>
                <input type="text" name="Nume" id="plus" placeholder="Numele">
                <h3>Prenumele</h3>
                <input type="text" name="Prenume" id="plus" placeholder="Prenume">
                <h3>Login</h3>
                <input type="text" name="login" placeholder="login">
                <h3>Parola</h3>
                <input type="password" name="parola" placeholder="Parola">
                <h3>Gmailul</h3>
                <input type="text" name="gmail" id="plus" placeholder="Gmailul">
                <h3>Numarul de telefon</h3>
                <input type="text" name="NR" id="plus" placeholder="Numarul">
                <br><br>
                <button type="submit" id="sing_up"><h1>Register</h1></button>
            </form>
            <div id="error-message"></div>
        </div>
    </main>
    <footer>
        <div class="folder">
            <h4>© Laborator la Tehnologii Web care este realizat de Chistol Maxim Grupa IA-233</h4>
        </div>
    </footer>
    <script>
        document.getElementById("registerForm").addEventListener("submit", function(event) {
            event.preventDefault();

            var nume = document.getElementsByName("Nume")[0].value;
            var prenume = document.getElementsByName("Prenume")[0].value;
            var login = document.getElementsByName("login")[0].value;
            var parola = document.getElementsByName("parola")[0].value;
            var gmail = document.getElementsByName("gmail")[0].value;
            var nr = document.getElementsByName("NR")[0].value;

            var errorMessage = document.getElementById("error-message");
            errorMessage.textContent = ""; // Resetează mesajul de eroare

            if (!nume || !prenume || !login || !parola || !gmail || !nr) {
                errorMessage.textContent = "Toate câmpurile trebuie completate.";
                return; // Oprește trimiterea formularului
            }

            var formData = new FormData(this);
            var xhr = new XMLHttpRequest();

            xhr.open("POST", "register.php", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        window.location.href = "Log.Pag.php"; // Redirecționează către pagina de logare
                    } else {
                        console.error("Error occurred while processing the request.");
                    }
                }
            };

            xhr.send(formData);
        });
    </script>
    <script src="JS1.js"></script>
</body>
</html>
