
/**
 * Décrivez votre classe Ville ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class Ville
{
    private String nom;
    private int nb_habitants;
    
    public Ville(String name, int nb){
        nom = name;
        nb_habitants = nb;
    }
    
    public String getNom(){return nom;}
    public int getNb_habitants(){return nb_habitants;}
    
    public void setNom(String name){nom = name;}
    public void setNb_habitants(int nb){nb_habitants = nb;}
    
    public String description(){
        return nom + " : " + nb_habitants + " habitants.";
    }
}
