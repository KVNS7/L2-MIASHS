public class DemoPorte
{
    public static void main(String[] args)
    {
        // création d'un objet Porte et enregistrement de son identité dans une référence
        Porte porte = new Porte();
        // affichage de la valeur de l'attribut couleur de l'objet Porte
        System.out.println(porte.couleur());
        // modification de la valeur de l'attribut couleur de l'objet porte
        porte.peindre("rouge");
        // affichage de la nouvelle valeur de l'attribut couleur de l'objet Porte
        System.out.println(porte.couleur());
    }
}