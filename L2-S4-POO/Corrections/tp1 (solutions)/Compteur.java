public class Compteur
{
    private int cpt;
    
    public void incrementer() {cpt++;}
    public void decrementer() {if (cpt>0) {cpt--;}}
    public void reinitialiser() {cpt=0;}
    public void afficher() {System.out.print(cpt);}
}