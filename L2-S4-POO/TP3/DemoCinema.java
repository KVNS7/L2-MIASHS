public class DemoCinema
{
    public static void main(String[] args)
    {
        Cinema c1 = new Cinema(3);
        
        c1.programmer(1,"Titre 1");
        c1.programmer(2,"Titre 2");
        c1.programmer(3,"Titre 3");
        
        for(int i = 1;i <= 3;i++)
            System.out.println(String.format("Salle %d : %s",i,c1.film(i)));
            
        CinemaQuartier c2 = new CinemaQuartier();
        
        c2.programmer("Titre");
        
        System.out.println(c2.film());
    }
}