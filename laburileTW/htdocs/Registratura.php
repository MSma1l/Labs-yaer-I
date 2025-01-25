<!DOCTYPE html>
<html lang="ro">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="Reg.css">
    <link rel="icon" type="imagenes" href="news.png">
	<title>CarMax</title>
</head>
<body >
	<header>
		<div class="meniu">
			<div class="logo">
				<a href=""><H1>CarM</H1></a>
            </div>
            <div class="top_meniu">
				<ul>
					<li><a href="Log.Pag.html">Log In</a></li>
					<li><a href="Registratura.html">Register</a></li>
				</ul>
			</div>
        </div>    
	</header>
	<main>
        <div class="Registru">
            <form action="register.php" method="post">
            <h1 id="item">Register</h1>
            <h3>Numele </h3>
            <input type="text" name="Nume" id="plus" placeholder="Numele">
            <h3>Prenumele</h3>
            <input type="text" name="Prenume" id="plus" placeholder="Prenume">
            <h3>Login</h3>
            <input type="text" name="login" placeholder="login">
            <h3>Parola</h3>
            <input type="password" name="parola"  placeholder="Parola">
            <h3>Gmailul</h3>
            <input type="text" name="gmail" id="plus" placeholder="Gmailul">
            <h3>Numarul de telefon</h3>
            <input type="text" name="NR" id="plus" placeholder="Numarul">
            <br><br>
            <button type="submit" id="sing_up"><h1>Register</h1></button>
            </form>
            <?php
// Prelucrarea datelor din formular și inserarea în baza de date
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Prelucrarea datelor din formular
    $nume = $_POST['Nume'];
    $pren = $_POST['Prenume'];
    $login = $_POST['login'];
    $pass = $_POST['parola'];
    $gmail = $_POST['gmail'];
    $numm = $_POST['NR'];

    include 'register.php';

    // Verificare conexiune
    if ($conn->connect_error) {
        die("Conexiunea la baza de date a eșuat: " . $conn->connect_error);
    }

    // Interogare SQL pentru inserarea datelor în baza de date 
    $sql = "INSERT INTO  user (`Nume`, `Prenume`, `Login`, `Parola`, `Gmail`, `Numarul`) VALUES ('$nume', '$pren', '$login', '$pass', '$gmail', '$num')";

    if ($conn->query($sql) === TRUE) {
        echo "Datele au fost inserate în baza de date cu succes.";
    } else {
        echo "Eroare la inserarea datelor în baza de date: " . $conn->error;
    }

    // Închidere conexiune
    $conn->close();
} else {
    echo "Eroare la trimiterea datelor.";
}
?>
    </div>
    </main>
 	<footer>
 		<div class="folder">
 			<h4> © Laborator la Tehnologii Web care este realizat de Chistol Maxim Grupa IA-233</h4>
 			
 		</div>
 	</footer>
</body>
<script src="JS1.js"></script>
</html>