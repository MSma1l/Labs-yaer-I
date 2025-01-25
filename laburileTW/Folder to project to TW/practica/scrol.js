var leftBtn = document.querySelector('#left');
var rightBtn = document.querySelector('#right');
var imageList = document.querySelector('.ull');

leftBtn.addEventListener('click', slide);
rightBtn.addEventListener('click', slide);

function slide(e) {
  if (e.target.id === 'left') {
    scroll(-300); // Valoare negativă pentru a merge la stânga
  } else {
    scroll(300); // Valoare pozitivă pentru a merge la dreapta
  }
}

function scroll(val) {
  imageList.scrollBy({ 
    left: val,
    behavior: 'smooth'
  });
}
