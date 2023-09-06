public class DemoVol
{
    public static void main(String[] args)
    {
        Vol vol = new Vol(10); // vol avec 10 places proposées
        vol.enregistrer(3,new Passager("Client 1"));
        vol.enregistrer(6,new Passager("Client 2"));
        vol.afficher();
    }
}