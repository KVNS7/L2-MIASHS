#include <stdio.h>

int dichotomie_recursive(int *tab, int debut, int fin, int valeur){
	
	if(debut>fin)return -1;
	int m=(debut+fin)/2;

	if(tab[m]==valeur) return m;
	
	if(tab[m]>valeur)return(dichotomie_recursive(tab,debut,m-1,valeur));
				
	else return(dichotomie_recursive(tab,m+1,fin,valeur));
}

int dichotomie(int *tab, int taille, int valeur){
	int debut = 0, fin = taille - 1, m;
	
	while(debut <= fin){
		
		m = (debut + fin) / 2;
		
		if(tab[m]==valeur) return m;
		
		if(tab[m] > valeur) fin = m - 1;
		else debut = m + 1;
	}
	return -1;
}

int main(){
	
	int taille=10,tab[]={1,4,7,10,13,23,158,239,1236,3573};
	
	printf("\n%d",dichotomie_recursive(tab,0,taille-1,4));
	printf("\n%d",dichotomie_recursive(tab,0,taille-1,1236));
	printf("\n%d",dichotomie_recursive(tab,0,taille-1,2938));
	
	
	printf("\n\n%d",dichotomie(tab,taille,4));
	printf("\n%d",dichotomie(tab,taille,1236));
	printf("\n%d",dichotomie(tab,taille,240));
	
	
	return 0;
}
