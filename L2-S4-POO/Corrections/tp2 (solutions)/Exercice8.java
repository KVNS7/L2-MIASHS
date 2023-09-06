public class Exercice8 {
    public static void main(String[] args)
    {
        Phrase ph = new Phrase();
        ph.ajouter("Esope").ajouter("reste").ajouter("ici").ajouter("et").ajouter("se").ajouter("repose");
        System.out.println(ph.estPalindrome()); // affiche true
        
        ph = new Phrase();
        ph.ajouter("programmation").ajouter("orientee").ajouter("objet");
        System.out.println(ph.estPalindrome()); // affiche false
    }
}