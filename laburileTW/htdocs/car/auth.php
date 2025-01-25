<?php
$login = filter_var(trim($_POST['login']));
$pass = filter_var(trim($_POST['parola']));

$pass = md5($pass."TEWtewMax123");

$mysql = new mysqli('localhost', 'root', 'root', 'regiser');
if (empty($login) || empty($pass)) {
    echo "Completati toate campurile";
} else { 
    $result = $mysql->query("SELECT * FROM `user` WHERE `Login` = '$login' AND  `Parola` = '$pass'");
    $user = $result->fetch_assoc();
    if ($user) {
        setcookie('user', $user['Nume'], time() + 3600 );
        echo "Autentificare reușită";
    } else {
        echo "Datele introduse sunt incorecte";
    }
}

$mysql->close();

?>
