public class Exercice10
{
    public static void main(String[] args)
    {
    ListeChansons liste = new ListeChansons(5);
    
    liste.ajouter("In the Flesh ?",199);
    liste.ajouter("The Thin Ice",149);
    liste.ajouter("Another Brick in the Wall, Part I",190);
    liste.ajouter("The Happiest Days of Our Lives",111);
    liste.ajouter("Another Brick in the Wall, Part II",239);
    liste.ajouter("Mother",336);
    
    liste.afficher();
}
}