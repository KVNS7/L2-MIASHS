public class Compteur
{
    public int nb;
    
    public void reinitialiser(){this.nb=0;}
    public void incrementer(){this.nb++;}
    public void decrementer(){if(this.nb>0){this.nb--;}}
    public void afficher(){System.out.printf("%d ",this.nb);}
}