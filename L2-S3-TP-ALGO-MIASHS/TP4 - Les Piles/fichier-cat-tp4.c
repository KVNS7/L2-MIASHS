#include<stdio.h>
#include<stdlib.h>
#include <limits.h>

typedef struct pile{
    int* tab;
    int nb_elements;
    int taille_max;
}pile;

pile *creation_pile(int taille){
    pile *p=(pile*)malloc(sizeof(pile));
    p->tab = (int)malloc(sizeof(int)*taille);
    p->nb_elements=0;
    p->taille_max=taille;
    return p;
}

int pile_est_vide(pile *p){
    if(p->nb_elements==0) return 1;
    else return 0;
}

int pile_est_pleine(pile *p){
    if(p->nb_elements==p->taille_max) return 1;
    else return 0;
}

int empiler(pile *p, int val){
    if(p == NULL || pile_est_pleine(p)) return INT_MIN;

    p->tab[p->nb_elements] = val;
    p->nb_elements++;
    return val;
}

int depiler(pile *p){
    if(p == NULL || pile_est_vide(p)) return INT_MIN;

    int val = p->tab[p->nb_elements-1];
    p->tab[p->nb_elements-1] = NULL;
    p->nb_elements--;
    return val;
}

void affichage_pile(pile *p){
    if(p == NULL || pile_est_vide(p)) printf("|");
    else{
        printf("%d",p->tab[0]);
        if(p->nb_elements == 1) return;

        for(int i = 1; i < p->nb_elements; i++) printf("|%d",p->tab[i]);
    }
}

int main() {
	return 0;
}
