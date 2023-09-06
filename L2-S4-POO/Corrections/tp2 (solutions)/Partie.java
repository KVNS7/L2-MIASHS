public class Partie
{
    public static void main(String[] args)
    {
        // on lance trois dés
        Lancer lancer = new Lancer(3);
        System.out.println("Les résultats des trois lancers sont :");
        for(De de : lancer.resultats()) de.afficher();
    }
}