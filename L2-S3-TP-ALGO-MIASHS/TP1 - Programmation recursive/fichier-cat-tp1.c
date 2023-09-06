#include <stdio.h>
#include <stdlib.h>

int puissance(int x, int n){
	if(n < 0)return n;
	if(n == 0)return 1;
	int nb = x, i;
	for(i = 1; i < n; i++){
		nb *= x;
	}
	return nb;
}

int fonction_puissance_recursive(int x, int n){
	if(n == 0)return 1;
	return x*fonction_puissance_recursive(x, n - 1);
	//return (n==0) ? 1 : x*fonction_puissance_recursive(x,n-1);
}

int fonction_puissance_recursive_rapide(int x, int n){
	if(n == 0)return 1;

	int var = fonction_puissance_recursive_rapide(x*x, n/2);

	if(n%2 == 0)return var;
	else return x*var;

	//return (pui%2 == 0) ? var : x*var;
}

int factorielle_iterative(int n){
	int nb = 1;
	for(int i = 2; i <= n; i++){
		nb*= i;
	}
	return nb;
}

int factorielle_recursive(int n){
	if(n < 2)return 1;
	return n*factorielle_recursive(n-1);
}

void tous_les_entiers_de_x_a_y_recursif( int debut , int fin){
	if(debut < fin){
		printf("%d\n",debut);
		tous_les_entiers_de_x_a_y_recursif(debut + 1, fin);
	}else printf("%d\n",fin);
}

int nombre_de_chiffres_recursif (int n){
	if(n < 0) n = -n;
	if(n < 10) return 1;
	return 1 + nombre_de_chiffres_recursif(n / 10);
}

int pgcd(int a, int b){
	if(b == 0) return a;
	return pgcd(b, a % b);
}

int fibonacci_recursif(int n){
	if(n < 0)return n;
	if(n == 0)return 0;
	if(n == 1)return 1;
	return fibonacci_recursif(n - 1) + fibonacci_recursif(n - 2);
}

int autre_suite(int n){
	if(n < 0)return n;
	if(n == 0) return 3;
	if(n == 1) return 5;
	int u = autre_suite(n - 1);
	return u * u * autre_suite(n - 2);

}

int encore_suite(int n){
	if(n < 0)return n;
	if(n < 3)return 1;
	if(n%2 == 0)return 1;
	return 2 * encore_suite(n - 2);

}

int dichotomie_recursive(int *tab, int debut, int fin, int valeur){

	if(debut > fin)return -1;
	int m = (debut+fin)/2;

	if(tab[m] == valeur) return m;

	if(tab[m] > valeur) return(dichotomie_recursive(tab,debut,m-1,valeur));

	else return(dichotomie_recursive(tab,m+1,fin,valeur));
}

int dichotomie(int *tab, int taille, int valeur){
	int debut = 0, fin = taille - 1, m;

	while(debut <= fin){

		m = (debut + fin) / 2;

		if(tab[m] == valeur) return m;

		if(tab[m] > valeur) fin = m - 1;
		else debut = m + 1;
	}
	return -1;
}

int partition(int *tab, int d, int f){
    int ipivot=d, i;
    int gauche = 0, droite = f-d;
    int *tmp;
    tmp=(int*)malloc(sizeof(int)*(f-d+1));

    for(i = d+1; i<=f; i++){
        if(tab[i]<tab[ipivot]){
            tmp[gauche] = tab[i];
            gauche ++;
        }else{
            tmp[droite] = tab[i];
            droite--;
        }
    }
    tmp[gauche] = tab[ipivot];
    ipivot = gauche;

    for(i=0; i<f-d+1; i++) tab[d+i] = tmp[i];
    return ipivot+d;
}

void tri_rapide(int *tab, int d, int f){
    int ipivot;
    if(d<=f){
        ipivot = partition(tab,d,f);
        tri_rapide(tab,d,ipivot-1);
        tri_rapide(tab,ipivot+1,f);
    }
}

int main(){

 return 0;
}
