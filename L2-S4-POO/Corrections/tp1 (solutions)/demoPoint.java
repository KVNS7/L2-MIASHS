public class demoPoint
{
    public static void main(String[] args)
    {
        // (a) création de deux points de memes coordonnées
        Point p1 = new Point(1,2), p2 = new Point(1,2);
        // (b) affiche l'état de chacun des points
        System.out.println("p1 : " + p1.etat());
        System.out.println("p2 : " + p2.etat());
        // (c) compare les coordonnées des deux points
        if (p1.comparer(p2))
        {
            System.out.println("Les points p1 et p2 ont les memes coordonnées");
        }
        else
        {
            System.out.println("Les points p1 et p2 n'ont pas les memes coordonnées");
        }
        // (d) déplacement de p1
        p1.deplacer(2,3);
        // (e) affiche l'état de chacun des points
        System.out.println("p1 : " + p1.etat());
        System.out.println("p2 : " + p2.etat());
        // (f) compare les coordonnées des deux points
        if (p1.comparer(p2))
        {
            System.out.println("Les points p1 et p2 ont les memes coordonnées");
        }
        else
        {
            System.out.println("Les points p1 et p2 n'ont pas les memes coordonnées");
        }
    }
}
