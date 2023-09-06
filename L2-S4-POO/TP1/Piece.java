
public class Piece 
{
    private Lampe lampe;
        
    public boolean estAllumee() {return lampe.estAllumee();}
    
    public Piece() {lampe = new Lampe();}
    public void allumer() {lampe.allumer();}
    public void eteindre() {lampe.eteindre();}

}