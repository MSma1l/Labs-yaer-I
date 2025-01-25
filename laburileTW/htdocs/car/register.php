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


$pass = md5($pass."TEWtewMax123");

$mysql = new mysqli('localhost','root','root','regiser');
$mysql->query("INSERT INTO `user` (`Nume`, `Prenume`, `Login`, `Parola`, `Gmail`, `Numarul`) VALUES ('$nume', '$pren', '$login', '$pass', '$gmail', '$num')");

$mysql->close();


header('Location: Log.Pag.php');
exit();
?>
