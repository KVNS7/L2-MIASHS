public class Passager
{
    private String name; // identité du passager
    
    /*
     * L'état initial d'un objet Passager contient l'identité du passager qui est 
     * donnée en argument du constructeur.
     * 
     * Création d'un objet Passager : new Passager("John Doe")
     */
    public Passager(String nom) {this.name = nom;}
    
    public String nom() {return name;}
    
}