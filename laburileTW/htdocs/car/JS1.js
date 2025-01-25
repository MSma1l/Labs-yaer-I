
        // Cod JavaScript specific pentru main
        window.onload = function() {
            // JavaScript specific pentru main aici
            var startBtn = document.getElementById('startBtn');
            startBtn.addEventListener('click', function() {
                // Afiseaza un mesaj
                alert('Pe Gmail vei premi link cu masinele care ti se vor potrevi,Multumim!!!');
            });
        };

        //MAsel car
    
function changeImage() {
    var image = document.getElementById("myImage");
    // Verificăm dacă sursa imaginii este actualmente 
    if (image.src.includes("https://build.ford.com/dig/Ford/Mustang/2024/HD-TILE/Image%5B%7CFord%7CMustang%7C2024%7C1%7C1.%7C700A.P8R..PK1..88A.89A.~12A00_BCMAG.68B.576.97B.B5WDB.BBHAU.13K.COU.BSHCV.BY1AJ.BYBBR.BYPBC.858.LTS.64R.TBC.D5HAB.50C.RWD.67J.96D.45B.45T.990.19X.18Z.63V.FS--A.GCEAE.52B.GTDAC.91B.HLLAD.HNAAJ.SSR.58X.17P.SY4.IGDAC.JCBAP.44E.MAC.YZTAC.CVN.%5D/EXT/4/vehicle.png")) {
        // Schimbăm sursa imaginii la altă imagine
        image.src = "https://build.ford.com/dig/Ford/Mustang/2024/HD-TILE/Image%5B%7CFord%7CMustang%7C2024%7C1%7C1.%7C700A.P8R..PK1..88A.89A.~12A00_BCMAG.68B.576.97B.B5WDB.BBHAU.13K.COU.BSHCV.BY1AJ.BYBBR.BYPBC.858.LTS.64R.TBC.D5HAB.50C.RWD.67J.96D.45B.45T.990.19X.18Z.63V.FS--A.GCEAE.52B.GTDAC.91B.HLLAD.HNAAJ.SSR.58X.17P.SY4.IGDAC.JCBAP.44E.MAC.YZTAC.CVN.%5D/EXT/2/vehicle.png";
    } else if (image.src.includes("https://build.ford.com/dig/Ford/Mustang/2024/HD-TILE/Image%5B%7CFord%7CMustang%7C2024%7C1%7C1.%7C700A.P8R..PK1..88A.89A.~12A00_BCMAG.68B.576.97B.B5WDB.BBHAU.13K.COU.BSHCV.BY1AJ.BYBBR.BYPBC.858.LTS.64R.TBC.D5HAB.50C.RWD.67J.96D.45B.45T.990.19X.18Z.63V.FS--A.GCEAE.52B.GTDAC.91B.HLLAD.HNAAJ.SSR.58X.17P.SY4.IGDAC.JCBAP.44E.MAC.YZTAC.CVN.%5D/EXT/2/vehicle.png")) {
        image.src = "https://build.ford.com/dig/Ford/Mustang/2024/HD-TILE/Image%5B%7CFord%7CMustang%7C2024%7C1%7C1.%7C700A.P8R..PK1..88A.89A.~12A00_BCMAG.68B.576.97B.B5WDB.BBHAU.13K.COU.BSHCV.BY1AJ.BYBBR.BYPBC.858.LTS.64R.TBC.D5HAB.50C.RWD.67J.96D.45B.45T.990.19X.18Z.63V.FS--A.GCEAE.52B.GTDAC.91B.HLLAD.HNAAJ.SSR.58X.17P.SY4.IGDAC.JCBAP.44E.MAC.YZTAC.CVN.%5D/EXT/5/vehicle.png"
    } else  {
        // Dacă sursa imaginii nu este "ferra.png", o schimbăm înapoi
        image.src = "https://build.ford.com/dig/Ford/Mustang/2024/HD-TILE/Image%5B%7CFord%7CMustang%7C2024%7C1%7C1.%7C700A.P8R..PK1..88A.89A.~12A00_BCMAG.68B.576.97B.B5WDB.BBHAU.13K.COU.BSHCV.BY1AJ.BYBBR.BYPBC.858.LTS.64R.TBC.D5HAB.50C.RWD.67J.96D.45B.45T.990.19X.18Z.63V.FS--A.GCEAE.52B.GTDAC.91B.HLLAD.HNAAJ.SSR.58X.17P.SY4.IGDAC.JCBAP.44E.MAC.YZTAC.CVN.%5D/EXT/4/vehicle.png";
    }
}

//play list

function changeImage2() {
    var image = document.getElementById("myImage");
    // Verificăm dacă sursa imaginii este actualmente 
    if (image.src.includes("89.jpg")) {
        // Schimbăm sursa imaginii la altă imagine
        image.src = "https://cdn.dealeraccelerate.com/raleigh/9/1774/43556/1920x1440/1956-pontiac-star-chief";
    } else if (image.src.includes("https://cdn.dealeraccelerate.com/raleigh/9/1774/43556/1920x1440/1956-pontiac-star-chief")) {
        image.src = "https://photos.classiccars.com/cc-temp/listing/72/5679/1119105-1956-pontiac-star-chief-std.jpg"
    } else  {
        // Dacă sursa imaginii nu este "ferra.png", o schimbăm înapoi
        image.src = "89.jpg";
    }
}


//SUper Car 
function changeImage3() {
    var image = document.getElementById("myImage");
    // Verificăm dacă sursa imaginii este actualmente "ferra.png"
    if (image.src.includes("ferra.png")) {
        // Schimbăm sursa imaginii la altă imagine
        image.src = "https://i0.wp.com/asphalt9.info/wp-content/uploads/2018/07/Ferrari-488-GTB.jpg?fit=1062%2C588&ssl=1";
    } else if (image.src.includes("https://i0.wp.com/asphalt9.info/wp-content/uploads/2018/07/Ferrari-488-GTB.jpg?fit=1062%2C588&ssl=1")) {
         image.src = "https://www.topgear.com/sites/default/files/cars-car/image/2015/12/li3020379_u6a0684488_1.jpg";
    } else{
        // Dacă sursa imaginii nu este "ferra.png", o schimbăm înapoi
        image.src = "ferra.png";
    }
}


//Tuning Car
function changeImage4() {
    var image = document.getElementById("myImage");
    // Verificăm dacă sursa imaginii este actualmente 
    if (image.src.includes("golf.jpeg")) {
        // Schimbăm sursa imaginii la altă imagine
        image.src = "https://motor.ru/thumb/1500x0/filters:quality(75):no_upscale()/imgs/2023/06/05/11/5930794/d5dbcd66f9479d2884eef631e26cbbc2c00ec6c6.jpg";
    } else if (image.src.includes("https://motor.ru/thumb/1500x0/filters:quality(75):no_upscale()/imgs/2023/06/05/11/5930794/d5dbcd66f9479d2884eef631e26cbbc2c00ec6c6.jpg")) {
        image.src = "https://carakoom.com/data/wall/787/6495010d_medium.jpg"
    } else if (image.src.includes("https://carakoom.com/data/wall/787/6495010d_medium.jpg")) {
        image.src = "https://i.ytimg.com/vi/RU9ng5aWK_A/maxresdefault.jpg"
    } else{
        // Dacă sursa imaginii nu este "ferra.png", o schimbăm înapoi
        image.src = "golf.jpeg";
    }
}

function redirect() {
    window.location.href = 'Registratura.html'; 
  }