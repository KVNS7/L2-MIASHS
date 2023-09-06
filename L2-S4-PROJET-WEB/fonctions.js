function changerimage(num){//permet de changer le modele quand on clique sur une autre couleur
    im1=document.getElementById("modele1");
    im2=document.getElementById("modele"+num);//comme chaque id est unique on ajt un num pour chaque modele
    var tmp=im1.src;
    im1.src=im2.src;
    im2.src=tmp;
}



let popup = 0;

function actionpopup(){
    if (popup == 0) ouvrepopup();
    else fermepopup();
}

function ouvrepopup(){
    var elt = document.getElementById("popup");
    elt.style.display="block";
    popup = 1;
}

function fermepopup(){
    var elt = document.getElementById("popup");
    elt.style.display="none";
    popup = 0;
}


clic=false;//on a besoin d'une variable globale pour savoir si le bouton a deja ete clique, sinon les tailles se dedoublent quand on clique plusieurs fois
function choix_tailles(){
    if(clic==false){
    for (var i = 36; i <= 45; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        document.getElementById("tailles").appendChild(option);
        clic=true;
    }
    }
}

function choix_taille2(){
    var taille =document.getElementById("tailles").value;
    return taille;
}


function choix_couleur(){
    couleur =document.getElementById("tailles").value;
    return couleur;
}





setTimeout(function() {
    document.querySelector('body').classList.add('show');
  }, 1500);


