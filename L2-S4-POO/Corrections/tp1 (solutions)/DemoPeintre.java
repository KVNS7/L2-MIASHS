public class DemoPeintre
{
    public static void main(String[] args)
    {
        // création d'un objet Peintre
        Peintre peintre = new Peintre();
        // création d'un objet porte
        Porte porte = new Porte();
        // affichage de la valeur de l'attribut couleur de l'objet Porte
        System.out.println(porte.couleur());
        // modification de la valeur de l'attribut couleur de l'objet Porte par un objet peintre
        peintre.peindre(porte,"rouge");
        // affichage de la nouvelle valeur de l'attribut couleur de l'objet Porte
        System.out.println(porte.couleur());
    }
}
