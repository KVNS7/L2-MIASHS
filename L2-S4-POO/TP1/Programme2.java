public class Programme2
{
    public static void main(String[] args)
    {
        Moteur2 m = new Moteur2();
        
        m.setPuissance(2500);
        
        System.out.format("La puissance du moteur est %d\n",m.getPuissance());
    }
}