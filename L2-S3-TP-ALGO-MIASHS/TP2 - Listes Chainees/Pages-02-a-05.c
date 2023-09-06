#include <stdio.h>
#include <stdlib.h>

typedef struct liste{
	
	int valeur;
	struct liste *next;
	
}liste;

liste * creation_maillon(int n){
	liste *nouveau;
	
	nouveau = (liste*)malloc(sizeof(liste));
	nouveau->valeur=n;
	nouveau->next = NULL;
	
	return nouveau;
	
}

int est_vide(liste *l){
	return(l == NULL) ? 1 : 0;
}

void affichage_liste1(liste *l){
	liste *nb = l;
	
	while(nb != NULL){
		printf("%d->",nb->valeur);
		nb = nb->next;
	}
	
	printf("NULL");
}

void affichage_liste_rec(liste *l){
	
	if(l != NULL){
		
		printf("%d->",l->valeur);
		affichage_liste_rec(l->next);
		
	}else printf("NULL");
}

void affichage_liste_rec_a_l_envers(liste * l){
	
	if(l != NULL){
		affichage_liste_rec_a_l_envers(l->next);
		printf("<-%d",l->valeur);
		
	}else printf("NULL");
}

int main(){
	
	int nb = 3;
	liste *liste1 = creation_maillon(nb);
	
	printf("%d\n\n",est_vide(liste1));
	affichage_liste1(liste1);
	printf("\n");
	affichage_liste_rec(liste1);
	printf("\n");
	affichage_liste_rec_a_l_envers(liste1);
	
	return 0;
}
