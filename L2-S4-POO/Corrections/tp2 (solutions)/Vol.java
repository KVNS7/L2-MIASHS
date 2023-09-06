public class Vol
{
    private Passager[] list; // liste des passagers
    private int numPassengers; // nombre de passagers
    /*
     * Initialement, la liste des passagers est un tableau de références null. 
     * La seule information donnée en argument du constructeur est la longueur
     * de cette liste
     */
    public Vol(int nbMaxPassagers) {this.list = new Passager[nbMaxPassagers];}
    
    public int capacite() {return list.length;} // le nombre maximal de passagers que peut accueillir le vol
    public int nbPassagers() {return numPassengers;} // le nombre de passagers enregistrés sur le vol
    
    /* lors de l'enregistrement d'un passage, on vérifie que le numéro de place est valide */
    public void enregistrer(int i, Passager p)
    {
         if (i < 0 || i >= capacite()) {
             System.out.println("numéro de place invalide !");
             return;
         }
         
         list[i] = p;
         numPassengers++;
    }
    
    /* affiche la liste des passagers */
    public void afficher()
    {
       System.out.format("%d places réservées sur %d\n", nbPassagers(), capacite());
       for(int i = 0; i < list.length;i++)
       {
           if (list[i] != null)
           {
               System.out.println("Place " + i + " : " + list[i].nom());
           }
       }
    }
}