public class Exercice7
{
    public static void main(String[] args)
    {
        double[] notes = new double[] {8.5, 9, 11, 8.5, 13};
        
        // à compléter
        
        // Question 1
        double somme = 0.0;
        for(double x : notes) { somme += x;}
        // for(int i = 0;i < notes.length; i++) {somme += notes[i];}
        double moyenne = somme / notes.length;
        System.out.println(moyenne);
        
        // Question 2
        int compteur = 0;
        for(double x: notes) {if (x >= 10) {compteur++;}}
        System.out.println(compteur);
        
        // Question 3
        double max = notes[0];
        for(int i = 1; i < notes.length; i++) {if (notes[i] > max) {max = notes[i];}}
        System.out.println(max);
    }
}