public class DemoPile
{
    public static void main(String[] args)
    {
        Pile pile = new Pile(3);
        
        pile.afficher();
        
        pile.empiler(1);
        pile.empiler(3);
        pile.afficher();
        pile.empiler(5);
        pile.empiler(7);
        pile.afficher();
        
        System.out.println("Depiler :" + pile.depiler());
        pile.afficher();
        System.out.println("Depiler :" + pile.depiler());
        System.out.println("Depiler :" + pile.depiler());
        System.out.println("Depiler :" + pile.depiler());
        
    }
}