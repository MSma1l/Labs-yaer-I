<?php
// Aici poți să te conectezi la o bază de date sau să citești dintr-un fișier, etc.
// În acest exemplu, vom folosi un array simplu pentru a simula datele despre automobile
$automobile = array(
    "Ford Mustang Dark Horse" => array(
        "Marca" => "Ford",
        "Anul" => 2024,
        "Descriere" => "Faceți un pas și descoperiți noua ofertă premium de la Mustang: echipamentul de elită Ford Mustang Dark Horse 2024. Acest model este o pictogramă instantanee cu prezența sa izbitoare, designul uluitor și valorile de performanță rafinate. Experimentați motorul Coyote V-8 de 5 litri de a patra generație cu aspirație naturală și simțiți fiorul propulsiei atunci când apăsați pedala și săriți de la 0 la 60 în până la 4,1 secunde plat."
    ),
    "Chevrolet Camaro" => array(
        "Marca" => "Chevrolet",
        "Anul" => 2024,
        "Descriere" => "2024 Marchează ultimul an model pentru Camaro din a șasea generație. Pentru a comemora această piatră de hotar, Chevrolet este mândru să prezinte Camaro Collector Edition. Acest pachet odată-în-o generație oferă un aspect remarcabil în timp ce aduce un omagiu istoriei istorice a unei plăcuțe legendare."
    )
);

// Verificăm dacă parametrul 'car' a fost trimis prin metoda GET
if(isset($_GET['car'])) {
    $carName = $_GET['car'];
    // Verificăm dacă automobilul există în baza noastră de date simulată
    if(array_key_exists($carName, $automobile)) {
        // Returnăm informațiile despre automobil în format JSON
        echo json_encode($automobile[$carName]);
    } else {
        // Dacă automobilul nu există, returnăm un mesaj de eroare
        echo json_encode(array("error" => "Automobilul nu a fost găsit."));
    }
} else {
    // Dacă nu s-a trimis parametrul 'car', returnăm un mesaj de eroare
    echo json_encode(array("error" => "Parametrul 'car' lipsește."));
}
?>
