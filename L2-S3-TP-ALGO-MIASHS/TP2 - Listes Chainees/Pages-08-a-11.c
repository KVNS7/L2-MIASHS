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

int main()
{
	
	
	
	return 0;
}

