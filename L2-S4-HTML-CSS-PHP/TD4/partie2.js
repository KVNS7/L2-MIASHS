//Exercice 1

const premierParagraphe = document.getElementById("p1");
premierParagraphe.textContent = "HTML s'occupe essentiellement de la structure des pages web";

//Exercice 2

const premierTitre = document.getElementById("Para_HTML");
premierTitre.style.color = "blue";

//Exercice 3

const elements = document.getElementsByTagName("*");
for (let i = 0; i < elements.length; i++) {
  elements[i].style.fontFamily = "Times New Roman";
}

//Exercice 4

const dateTimeParagraphe = document.getElementById("Para_temps");
const date = new Date();
const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric' };
dateTimeParagraphe.textContent = date.toLocaleDateString('fr-FR', options);

//Exercice 5

// Obtenez la référence de l'élément d'image
var image = document.querySelector(".logo_entete");

// Définissez le point de départ de l'animation
var position = 0;

// Définissez la fonction d'animation
function animerImage() {
  // Incrémentez la position de l'image
  position += 10;
  // Appliquez la transformation à l'image
  image.style.transform = "translateX(" + position + "px)";

  // Si la position est inférieure à 500, continuez l'animation
  if (position < 500) {
    window.requestAnimationFrame(animerImage);
  }

}



// Commencez l'animation
animerImage();



