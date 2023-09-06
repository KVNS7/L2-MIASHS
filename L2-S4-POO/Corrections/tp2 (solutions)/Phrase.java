public class Phrase
{
    // Exercice 7
    private String phrase;
    private int nbMots, nbCaracteres;
    
    public String phrase() {
        if (phrase == null) {return "";}
        return phrase;
    }
    
    public int mots() {return nbMots;}
    
    public int caracteres() {return nbCaracteres;}

    public Phrase ajouter(String mot)
    {
        nbMots++;
        nbCaracteres += mot.length();
        if (phrase == null) 
        {
            phrase = mot;
        }
        else
        {
            phrase = phrase + " " + mot;
        }
        return this;
    }
    
    public int compter(char c)
    {
        int cpt = 0;
        
        for(char z : phrase.toCharArray())
        {
            if (z == c) {cpt++;}    
        }
        return cpt;
    }
    
    // Exercice 8    
    public boolean estPalindrome()
    {
        String str = phrase.replace(" ","").toLowerCase();
        
        int i  = 0, n = str.length(), m = n/2;
        
        while (i < m && str.charAt(i) == str.charAt(n - i - 1)) {i++;}
        
        return (i == m);
    }
    
}