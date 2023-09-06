public class DemoCompteur
{
    public static void main(String[] args)
    {
        Compteur compteur1 = new Compteur();
        compteur1.afficher();
        for(int i = 0; i<10; i++){
            compteur1.incrementer();
        }
        compteur1.afficher();
        for(int i = 0; i<20; i++){
            compteur1.decrementer();
        }
        compteur1.afficher();
    }
}