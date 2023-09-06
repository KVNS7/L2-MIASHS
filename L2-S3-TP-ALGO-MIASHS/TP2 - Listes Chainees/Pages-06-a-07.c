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

liste * ajoute_tete(liste *l, liste *e){
	liste *new = e;
	
    new->next=l;

	return new;
}  

liste * suppression_tete (liste *l){
	if(l->next == NULL){
		free(l);
		return NULL;
	}else{
	liste * new = l->next;
	free(l);
	
	return new;
	}
}

int main()
{
	
	return 0;
}

