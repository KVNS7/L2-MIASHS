public class Peintre
{
    public void peindre(Porte porte,String couleur)
    {
        if (couleur == null)
        {
            System.out.println("Indiquez la couleur SVP");
            return;
        }
        
        porte.peindre(couleur);
    }
}