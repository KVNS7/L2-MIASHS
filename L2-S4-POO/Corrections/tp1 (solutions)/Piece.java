
public class Piece 
{
    private Lampe lampe;
 
    public boolean estAllumee() {return lampe.estAllumee();}

    public void allumer() {lampe.allumer();}
    public void eteindre() {lampe.eteindre();}
    
    // ajout du constructeur
    public Piece()
    {
        // on crée aussi un objet Lampe en créant un objet Piece
        lampe = new Lampe();
    }

}