// Exercice 1
function fact(x){
    let temp = 1;
    for(i = 1; i<=x; i++){
        temp*=i;
    }
    return temp;
}

// Exercice 2 
var btn_red = document.getElementById("btn_rouge");
var btn_green = document.getElementById("btn_vert");
var btn_blue = document.getElementById("btn_bleu");

var para = document.getElementById("p1");

btn_red.onclick = function() { para.style.color="red" };
btn_green.onclick = function() { para.style.color="green"; };
btn_blue.onclick = function() { para.style.color="blue"; };

// Exercice 3
var img1 = document.getElementById("pic_h");
var img2 = document.getElementById("pic_f");

function permutImage(img1,img2) {
    var temp = img1.src;
    img1.src = img2.src;
    img2.src = temp;
  }

  img1.onclick = function() {permutImage(img1,img2);};
  img2.onclick = function() {permutImage(img1,img2);};

// Exercice 4
var nombreAleatoire = Math.floor(Math.random() * 50) + 1; 
var nombreTentatives = 0; 

function trouverNombre() {
  var nombreUtilisateur = parseInt(prompt("Entrez un nombre entre 1 et 50 :"));
  nombreTentatives++; 

  if (nombreUtilisateur === nombreAleatoire) { 
    alert("Félicitations, vous avez trouvé le nombre " + nombreAleatoire + " en " + nombreTentatives + " tentatives !");
  } else if (nombreUtilisateur < nombreAleatoire) { 
    alert("Le nombre est trop petit, essayez encore !");
    trouverNombre();
  } else if (nombreUtilisateur > nombreAleatoire) { 
    alert("Le nombre est trop grand, essayez encore !");
    trouverNombre();
  }
}

trouverNombre(); 