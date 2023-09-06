
/**
 * Décrivez votre classe DemoAire ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class DemoAire
{
    public static void main(String[] args)
    {
        Ville ville1 = new Ville("Nanterre",63738);
        Aire aire = new Aire(5); 
        aire.ajouter(ville1);
        aire.afficher();
    }
}
