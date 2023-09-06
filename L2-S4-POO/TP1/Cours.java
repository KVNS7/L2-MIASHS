
/**
 * Décrivez votre classe Cours ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class Cours
{
    private String name;
    private int duration;
    
    public Cours(String nom,int volume){
        name = nom;
        duration = volume;
    }
    
    public String voir(){
        String voir = name + " : " + duration + " heures";
        return voir;
    }
}
