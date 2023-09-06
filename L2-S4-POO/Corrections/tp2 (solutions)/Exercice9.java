public class Exercice9
{
    public static void main(String[] args)
    {
        Etudiant etud;
        
        // Création de l'objet Etudiant (Constructeur A)
        etud = new Etudiant("Etudiant 1",5);
        // Enregistement des notes dans l'Objet Etudiant
        etud.setNote(1,8.5);
        etud.setNote(2,9);
        etud.setNote(3,11);
        etud.setNote(4,8.5);
        etud.setNote(5,13);
        // Affichage des notes de l'étudiant
        for(int i = 1;i <= 5; i++)
        {
            System.out.println(etud.getNote(i));
        }
        // Calcul de sa moyenne
        System.out.format("Moyenne = %.2f\n",etud.moyenne());
        
        // Création de l'objet Etudiant (Constructeur B)
        etud = new Etudiant("Etudiant 1",new double[]{13, 10, 12.5});
        // Affichage des notes de l'étudiant
        for(int i = 1;i <= 3; i++)
        {
            System.out.println(etud.getNote(i));
        }
        // Calcul de sa moyenne
        System.out.format("Moyenne = %.2f\n",etud.moyenne());
        
        
    }
}