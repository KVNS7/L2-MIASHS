#include<stdio.h>
#include<stdlib.h>

typedef struct file{
    int* tableau;
    int taille_tableau;
    int debut;
    int fin;
}file;

file *initialisation_file(int taille){
    file *f = (file*)malloc(sizeof(file));

    f->tableau = (int*)malloc(sizeof(int)*taille);
    f->taille_tableau = taille;
    f->debut = 0;
    f->fin = 0;

    return f;
}

int file_vide(file f){
    if(f.debut == f.fin) return 1;
    return 0;
}

int file_pleine(file f){
    if( ((f.fin+1) % f.taille_tableau) == f.debut) return 1;
    return 0;
}

int enfiler(file *f, int element){
    if(file_pleine(*f)) return -1;
    f->tableau[f->fin] = element;

    if((f->fin++)+1 > f->taille_tableau) f->fin = 0;
    return 1;
}

int defiler(file *f){
    if(file_vide(*f)) return -1;
    f->tableau[f->debut] = NULL;
    f->debut++;

    if(f->debut+1 > f->taille_tableau) f->debut = 0;
    return 1;
}

void affichage_file(file f){
    while(f.debut != f.fin){
        printf("|%d",f.tableau[f.debut]);
        f.debut = (f.debut + 1) % f.taille_tableau;
    }
    printf("|");
}

void liberation_file(file *f){
    free(f->tableau);
    free(f);
}

int main() {
	return 0;
}
