/**

 * Décrivez votre classe Peintre ici.
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class Peintre
{
    public void peindre(Porte porte,String couleur){
        if(couleur == null){
            System.out.println("Aucune couleur donnée");
        }else{
            porte.peindre(couleur);
        }
    }
}