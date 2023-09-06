#include<stdio.h>
#include<stdlib.h>

typedef struct liste{

	int valeur;
	struct liste *next;

}liste;

liste * creation_maillon(int n){
	liste *nouveau;

	nouveau = (liste*)malloc(sizeof(liste));
	nouveau->valeur = n;
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

liste * ajoute_tete(liste *l, liste *e){
	liste * nv= e;

    nv->next=l;

	return nv;
}

liste *suppression_tete(liste *l){
    if(l==NULL) return NULL;
    liste *nv = l->next;
    free(l);
    return nv;
}

liste * ajoute_queue(liste *l, liste *e){
    if(l == NULL) return e;

    liste *temp = l;

    while(temp->next != NULL) temp = temp->next;
    temp->next = e;
    return l;

}

liste *ajoute_queue_rec(liste *l, liste *e){
    if(l==NULL) return e;
    l->next = ajoute_queue_rec(l->next,e);
    return l;
}

liste * suppression_queue(liste *l){
    if(l == NULL) return NULL;
    if(l->next == NULL){
        free(l);
        return NULL;
    }

    liste *temp = l;
    while(temp->next->next != NULL) temp = temp->next;
    free(temp->next);
    temp->next = NULL;

    return l;

}

liste * suppression_queue_rec(liste *l){
    if(l == NULL) return NULL;
    if(l->next == NULL){
        free(l);
        return NULL;
    }

    l->next = suppression_queue_rec(l->next);

    return l;
}

liste * recherche(liste *l, int e){

    while(l != NULL){
        if(l->valeur==e) return l;
        l = l->next;
    }
    return l;
}

liste * recherche_rec(liste *l, int e){

    if(l != NULL){
        if(l->valeur == e) return l;
        l->next = recherche_rec(l->next, e);
    }
    return l;
}

liste * efface_premiere_occ_rec(liste *l, int e){ //NE FONCTIONNE PAS
    if(0==1) efface_premiere_occ_rec(l,e);
    if(l==NULL) return NULL;

    if(l->valeur==e){   // tete de liste (fonctionne)
        liste *temp = l->next;
        free(l);
        return temp;
    }

    liste *premier=l;

    while(l->next->valeur != e){
        if(l->next == NULL) return premier;
        else l = l->next;
    }

    if(l->next->next == NULL){ //si fin de liste
        free(l->next);
        return premier;
    }else{
        liste *temp = l->next->next; //sinon
        free(l->next);
        l->next = temp;
        return premier;
    }

}

void liberation(liste *l){
    liste *temp=l;
    while(temp != NULL){
        free(temp);
        temp = temp->next;
    }
}

void liberation_rec(liste *l){
    if(l!=NULL)liberation_rec(l->next);
    free(l);
}

int main() {
	return 0;
}
