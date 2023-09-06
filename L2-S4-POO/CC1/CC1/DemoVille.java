
/**
 * Décrivez votre classe DemoVille ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class DemoVille
{
    public static void main(String[] args)
    {
        Ville ville = new Ville("Courbevoie",82074); 
        ville.getNom();
        ville.getNb_habitants();
        ville.setNom("Nanterre");
        ville.setNb_habitants(95782);
        ville.description();
    }
}
