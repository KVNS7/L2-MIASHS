public class ListeChansons
{
    private Chanson[] songs; // tableau
    private int numsongs; // compteur de chansons
    
    /*
     * A la création d'un objet ListeChansons, la liste de chansons est vide : on ne crée
     * que le tableau de référénces liste qui sont toutes initialisées à null. Le seul
     * argument du constructeur est le nombre maximal de chansons que pourra contenir 
     * la liste (qu'on appelle sa capacité)
     */
    
    public ListeChansons(int capacite)
    {
        this.songs = new Chanson[capacite];
        this.numsongs = 0;
    }
    
    public int capacite() {return songs.length;} // nombre maximale de chansons que peut contenir la liste
    public int nbChansons() {return numsongs;} // le nombre de chansons enregistrées dans la liste
    
    public void ajouter(String titreChanson, int dureeChanson)
    {
        // on vérifie d'abord que la liste n'est pas pleine 
        if (numsongs == songs.length) {
            System.out.println("Impossible d'ajouter " + titreChanson + " : liste pleine !");
            return;
        }
        
        // on crée un objet Chanson encapsulant le titre et la durée de la chanson donnés en argument
        Chanson c = new Chanson(titreChanson,dureeChanson);       
        // on enregistre l'objet créé dans le tableau 
        songs[numsongs] = c;
        // on actualise le compteur numsongs
        numsongs++;
    }
    
    public void afficher() 
    {
        int total = 0;
        
        for(int i = 0;i < numsongs;i++)
        {
            System.out.print(i+1);
            System.out.print(". ");
            songs[i].display();
            System.out.println();
            total += songs[i].getDuree();
        }
        System.out.print(numsongs);
        System.out.println(" chansons, durée : " + (total/60) + ":" + (total%60));
    }
    
}