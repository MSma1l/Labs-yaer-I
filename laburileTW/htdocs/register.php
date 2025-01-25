<?php

$nume = filter_var(trim($_POST['Nume']), 
FILTER_SANITIZE_STRING);
$pren = filter_var(trim($_POST['Prenume']), 
FILTER_SANITIZE_STRING);
$login = filter_var(trim($_POST['login']), 
FILTER_SANITIZE_STRING);
$pass = filter_var(trim($_POST['parola']), 
FILTER_SANITIZE_STRING);
$gmail = filter_var(trim($_POST['gmail']),
FILTER_SANITIZE_STRING);
$num = filter_var(trim($_POST['NR']),
 FILTER_SANITIZE_STRING);

if (mb_strlen($nume) < 5 || mb_strlen($nume) > 20 ||
    mb_strlen($pren) < 5 || mb_strlen($pren) > 20 ||
    mb_strlen($login) < 5 || mb_strlen($login) > 50 ||
    mb_strlen($pass) < 5 || mb_strlen($pass) > 255 || 
    mb_strlen($num) < 9) {
    echo "Datele introduse sunt incorecte";
    exit();
}

$pass = md5($pass."TEWtewMax123");

$mysql = new mysqli('localhost','root','root','regiser');
$mysql->query("INSERT INTO `user` (`Nume`, `Prenume`, `Login`, `Parola`, `Gmail`, `Numarul`) VALUES ('$nume', '$pren', '$login', '$pass', '$gmail', '$num')");

$mysql->close();

header('Location: auth.php');
exit();

?>
