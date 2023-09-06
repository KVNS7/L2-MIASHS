public class De
{
    private int value; // valeur du dé
    
    public De(int valeur) {this.value = valeur;}
    
    private int valeur() {return value;}
    
    public void afficher() {
        String s = "";
        
        switch(valeur())
        {
            case 1: s = " ----- \n|     |\n|  o  |\n|     |\n ----- \n"; break;
            case 2: s = " ----- \n|   o |\n|     |\n| o   |\n ----- \n"; break;
            case 3: s = " ----- \n|   o |\n|  o  |\n| o   |\n ----- \n"; break;
            case 4: s = " ----- \n| o o |\n|     |\n| o o |\n ----- \n"; break;
            case 5: s = " ----- \n| o o |\n|  o  |\n| o o |\n ----- \n"; break;
            case 6: s = " ----- \n| o o |\n| o o |\n| o o |\n ----- \n"; break;
        }
        
        System.out.print(s);
    }
    
    public static void main(String[] args)
    {
        for(int i = 1; i <= 6; i++)
        {
            System.out.print(new De(i));
        }
    }
}