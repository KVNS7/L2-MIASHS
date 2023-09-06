#include<stdio.h>
#include<stdlib.h>
#include<limits.h>

typedef struct vecteur{
    int *donnees;
    int taille;
}vecteur;

vecteur *creation_vecteur(int taille){
    vecteur *v = (vecteur*) malloc(sizeof(vecteur));
    v->donnees = (int) malloc(sizeof(int)*taille);
    v->taille = taille;
    return v;
}

int modifier_vecteur(vecteur v,int val, int position){
    if(position > v.taille-1 || position < 0) return 0;
    v.donnees[position]=val;
    return 1;
}

int valeur_vecteur(vecteur v, int position){
    if(position > v.taille-1 || position < 0) return INT_MIN;
    return v.donnees[position];
}

void initialiser_vecteur(vecteur v){
    for(int i = 0; i < v.taille; i++) v.donnees[i]=i;
}

void affichage_vecteur(vecteur v){
    for(int i = 0; i < v.taille; i++) printf("%d ",v.donnees[i]);
}

int main() {
	return 0;
}
