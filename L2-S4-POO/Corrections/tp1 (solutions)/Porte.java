public class Porte
{
    // attribut
    private String couleur;
    
    // interface
    public void peindre(String couleur) {this.couleur = couleur;}
    public String couleur() {return couleur;}
    
    // constructeurs
    public Porte() {peindre("blanc");}
    public Porte(String couleur) {peindre(couleur);}
}