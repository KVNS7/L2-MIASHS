public class Lampe
{
    private boolean estAllumee;
    
    public boolean estAllumee() {return estAllumee;}
    
    public void allumer() {estAllumee = true;}
    public void eteindre() {estAllumee = false;}
}
