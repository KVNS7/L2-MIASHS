#include<stdio.h>
#include<stdlib.h>

typedef struct arbre{
    int valeur;
    struct arbre *fils_gauche;
    struct arbre *fils_droit;
}ABR;

ABR *creation_noeud(int v){
    ABR *a = (ABR*)malloc(sizeof(ABR));
    a->valeur = v;
    a->fils_gauche = NULL;
    a->fils_droit = NULL;
    return a;
}

ABR *insertion(ABR *mon_arbre, ABR *noeud){
    if(mon_arbre == NULL)return noeud;
    if(mon_arbre->valeur > noeud->valeur) mon_arbre->fils_gauche = insertion(mon_arbre->fils_gauche,noeud);
    else mon_arbre->fils_droit = insertion(mon_arbre->fils_droit,noeud);

    return mon_arbre;
}

ABR *get_min(ABR *r){
    if(r->fils_gauche == NULL) return r;
    get_min(r->fils_gauche);
}

ABR *get_max(ABR *r){
    if(r->fils_droit == NULL) return r;
    get_max(r->fils_droit);
}

void affichage(ABR *mon_arbre){
    if(mon_arbre==NULL) printf("_");
    else{
        printf("(");
        affichage(mon_arbre->fils_gauche);
        printf(",%d,",mon_arbre->valeur);
        affichage(mon_arbre->fils_droit);
        printf(")");
    }
}

ABR *recherche(ABR *mon_arbre, int v){
    if(mon_arbre->valeur == v) return mon_arbre;
    if(mon_arbre->valeur > v) return recherche(mon_arbre->fils_gauche,v);
    if(mon_arbre->valeur < v) return recherche(mon_arbre->fils_droit,v);
    return NULL;
}

ABR *get_pere(ABR *r, ABR *f){
    if(r == NULL) return NULL;

    if(r->valeur > f->valeur){
        if(r->fils_gauche == f)return r;
        return get_pere(r->fils_gauche,f);
    }else{
        if(r->fils_droit == f) return r;
        return get_pere(r->fils_droit,f);
    }
}

int main() {
	return 0;
}
