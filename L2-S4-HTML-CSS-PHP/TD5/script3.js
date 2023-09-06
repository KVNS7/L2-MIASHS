// Exercice 6


let btn_ajout = document.getElementById("btn_ajout");
let list = document.getElementById("liste_courses");

function ajout_item(event){
    if (event.keyCode === 13 || event.type === "click") {
        let item = document.getElementById("ajout_liste").value;
        if(item == "") return;
        
        let li = document.createElement("li");
        li.appendChild(document.createTextNode(item));
        list.appendChild(li);
        document.getElementById("ajout_liste").value = "";
    }
}

let input = document.getElementById("ajout_liste");

btn_ajout.addEventListener("click", ajout_item);
input.addEventListener("keydown", ajout_item);