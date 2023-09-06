public class Exercice5
{
    public static void main(String[] args)
    {
        Phrase ph = new Phrase();
        System.out.println(ph.caracteres()); // affiche 0
        ph.ajouter("programmation").ajouter("orientée").ajouter("objet");
        System.out.println(ph.phrase());// affiche programmation orientée objet
        System.out.println(ph.caracteres()); // affiche 26
        System.out.println(ph.mots()); // affiche 3
        System.out.println(ph.compter('e')); // affiche 3
        System.out.println(ph.compter('c')); // affiche 0
    }
}