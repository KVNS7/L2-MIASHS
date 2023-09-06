// Exercice 5
let btn_valider = document.getElementById("valider_mdp");

function validation_mdp(){
    var MDP = document.getElementById("mdp").value;

    if(MDP === "") alert("Champ de saisie vide");
    else alert("Voici le mot de passe :" + MDP);
}

btn_valider.onclick = function() {validation_mdp();};