//Exercice 1

alert("Bonjour !");

//Exercice 2

function max(a, b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

//Exercice 3

for (let i = 1; i <= 10; i++) {
  console.log(i);
}

//Exercice 4

function estPremier(x){
    if(x<=1) return false;

    for (let i = 2; i < x; i++){
        if (x % i === 0) return false;
    }
    return true;
}

//Exercice 5

function estParfait(n) {
  let sommeDiviseurs = 0;
  
  for (let i = 1; i < n; i++) {
    if (n % i === 0) {
      sommeDiviseurs += i;
    }
  }

  if (sommeDiviseurs === n) {
    return true;
  } else {
    return false;
  }
}
