public class Pile
{
    private int[] stack; // pile d'entiers
    private int top; // sommet de la pile
    
    // Intialement, la pile est vide;
    public Pile(int capacity) {this.stack = new int[capacity]; top = 0;}
    
    public void afficher() {
        String s = "";
        
        if (top > 0) {
            s = String.format("%d",stack[0]);
            for(int i = 1;i < top; i++) {s += "," + stack[i];}
        }
        
        System.out.println("[" + s + "]");
    }
    
    public void print() {System.out.println(toString());}
    
    // ajoute un entier à la pile
    public void empiler(int i)
    {
        if (top == stack.length) {
            System.out.println("Ajout de " + i + " impossible : Pile pleine !");
            return;
        }
        
        stack[top++] = i;
    }
    
    // retire un entier de la pile
    public int depiler()
    {
        if (top == 0) {// si la pile est vide, on ne peut rien retourner !
            System.out.println("Pile vide !");
            return -9999; // on retourne une valeur arbitraire car la fonction 
            // DOIT retourner un entier !
        }
        
        return stack[--top];
    }
    
    public boolean estPleine() {return (top == stack.length);}
    public boolean estVide() {return (top == 0);}
}