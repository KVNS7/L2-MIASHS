
/**
 * Décrivez votre classe Aire ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class Aire
{
    public int max_villes;
    private int nb_villes;
    private Ville[] villes;
    
    public Aire(int max){
        max_villes = max;
        nb_villes = 0;
        this.villes = new Ville[max_villes];
    }
    
    public void ajouter(Ville city)
    {
        if(nb_villes!=max_villes)
        {
            villes[nb_villes] = city;
            nb_villes++;
        }else
        {
            System.out.print("Impossible : Nombre maximum de villes pour cette aire déja atteint\n");
        }
    }
    
    public void afficher()
    {
        System.out.printf("%d villes\n",nb_villes);
        
        if(nb_villes!=0){
            for(int x=0; x<nb_villes;x++){
                System.out.printf("%s : %d habitants\n",villes[x].getNom(),villes[x].getNb_habitants());
            }
        }
    }
}
