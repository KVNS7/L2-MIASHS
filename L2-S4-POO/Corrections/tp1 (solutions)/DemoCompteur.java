public class DemoCompteur
{
    public static void main(String[] args)
    {
        int i; // variable de boucle
        
        // création d'un objet Compteur et on affiche sa valeur
        Compteur compteur = new Compteur();
        compteur.afficher();
        
        System.out.print(" "); // ajout espace pour séparer les affichages successifs
        
        // on incrémente 10 fois le compteur et on affiche sa valeur
        for(i = 0;i<10;i++) {compteur.incrementer();}
        compteur.afficher();
        
        System.out.print(" ");
        
        // on décrémente 20 fois le compteur et on affiche sa valeur
         for(i = 0;i<20;i++) {compteur.decrementer();}
        compteur.afficher();
        
    }
}