public class Programme1
{
    public static void main(String[] args)
    {
        Moteur1 m = new Moteur1();
        
        m.puissance = 2500;
        
        System.out.format("La puissance du moteur est %d\n",m.puissance);
    }
}