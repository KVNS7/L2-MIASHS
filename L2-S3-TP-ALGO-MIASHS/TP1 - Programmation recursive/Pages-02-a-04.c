#include <stdio.h>

int puissance(int x, int n){
	if(n < 0) return n;
	if(n==0)return 1;
	int nb = x, i;
	for(i = 1; i < n; i++){
		nb*= x;
	}
	return nb;
}

int fonction_puissance_recursive(int x, int n){
	if(n==0)return 1;
	return x * fonction_puissance_recursive(x, n - 1);
	//return (n==0) ? 1 : x*fonction_puissance_recursive(x,n-1);
}

int fonction_puissance_recursive_rapide(int x, int n){ 
	if(n==0)return 1;
	
	int var=fonction_puissance_recursive_rapide(x*x, n/2);
	
	if(n%2==0)return var;
	else return x*var;
	//return (pui%2==0) ? var : x*var;
}

int main(){
	
	int nb, pui = 3;

	printf("Choisir un nombre a mettre a la puissance %d : ",pui);

	scanf("%d",&nb);
	
	printf("\nBasique : %d^%d = %d\n",nb, pui, puissance(nb, pui));

	printf("\nRecursive : %d^%d = %d\n",nb, pui, fonction_puissance_recursive(nb, pui));
	
	printf("\nRecursive rapide : %d^%d = %d\n",nb, pui, fonction_puissance_recursive_rapide(nb, pui));

	nb = 8, pui = 9;
	
	printf("\nBasique : %d^%d = %d\n",nb, pui, puissance(nb, pui));

	printf("\nRecursive : %d^%d = %d\n",nb, pui, fonction_puissance_recursive(nb, pui));
	
	printf("\nRecursive rapide : %d^%d = %d\n",nb, pui, fonction_puissance_recursive_rapide(nb, pui));

		
	return 0;
}

