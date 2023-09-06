public class Etudiant
{
    private String name;
    private double[] grades;
    
    /* Constructeur A :
     * L'état initial d'un objet Etudiant contient le nom de l'étudiant (attribut name).
     * En revanche, initialement, un objet Etudiant ne contient aucune des grades
     * de l'étudiant. On se contente de créer l'objet tableau; le type double étant un
     * type de données de base, les cases de tableau sont initialisées à 0. 
     * 
     * Dit autrement, lorsqu'on crée un objet Etudiant, il est marqué absent
     * par défaut à tous les controles !
     * 
     * Les arguments du constructeur sont donc : le nom de l'étudiant et le nombre de grades. 
     * Exemple de création d'un objet Etudiant: new Etudiant("Thomas",5)
     */
    public Etudiant(String name,int nbNotes)
    {
        this.name = name;
        this.grades = new double[nbNotes];
    }
    
    /* Constructeur B :
     * L'état initial d'un objet Etudiant contient le nom de l'étudiant (attribut name)
     * ainsi que ses grades.
     * 
     * Les arguments du constructeur sont donc : le nom de l'étudiant et un tableau de grades. 
     * Exemple de création d'un objet Etudiant: 
     * 
     * new Etudiant("Thomas",new double[] {13, 10, 12.5})
     */
    public Etudiant(String name,double[] notes)
    {
        this.name = name;
        this.grades = new double[notes.length];
        for(int i = 0;i < grades.length; i++) {this.grades[i] = notes[i];}
    }
    
    
    public String name() {return name;}
    
    /*
     * Les notes sont numérotées à partir de 1 (et non de 0)
     */
    public void setNote(int i, double note)
    {
        
        grades[i - 1] = note;
    }
    
    public double getNote(int i)
    {
        
        return grades[i - 1];
    }
    
    public double moyenne()
    {
        double somme = 0.0;
        for(double x : grades) { somme += x;}
        return somme / grades.length;
    }
}