public class Porte
{
    private String couleur;
    
    public void peindre(String couleur){this.couleur=couleur;}
    public String couleur(){return couleur;}
    
    public Porte(){peindre("blanc");}
    public Porte(String couleur){peindre(couleur);}
}
