public class Chanson
{
    private String title; // titre de la chanson
    private int duration; // durée en secondes de la chanson
    
    /*
     * On enregistre le titre et la durée de la chanson à la création d'un objet Chanson
     * 
     * Exemple de création d'un objet Chanson : new Chanson("In the flesh ?",199)
     */
    public Chanson(String titre,int duree)
    {
        this.title = titre;
        this.duration = duree;
    }
    
    public String getTitre() {return title;}
    public int getDuree() {return duration;}
    
    /*
     * affiche dans une console une chaines de caractères renseignant sur l'état de l'objet :
     * Chanson c = new Chanson("In the flesh ?",199);
     * c.display(); // affiche "In the flesh ? 3:19"
     */
    public void display() {
        int minutes = duration / 60, secondes = duration % 60;
        System.out.print(getTitre() + " " + minutes + ":" + secondes);
    }
}