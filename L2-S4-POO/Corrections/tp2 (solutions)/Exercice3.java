public class Exercice3 {
    public static void main(String[] args)
    {
        String str = "programmation orientee objet";
        
        // Version 0
        
        str = str.replace('a','_');
        str = str.replace('e','_');
        str = str.replace('i','_');
        str = str.replace('o','_');
        str = str.replace('u','_');
        str = str.replace('y','_');
        
        System.out.println(str);
        
        // Version 1
        String voyelles = "aeuioy";
        
        for(char c : voyelles.toCharArray())
        {
            str = str.replace(c,'_');
        }
        
        System.out.println(str);
        
        // Version 2
        char[] tableau = {'a','e','o','u','i','y'};
        
        for(char c : tableau)
        {
            str = str.replace(c,'_');
        }
        
        System.out.println(str);
        
    }
}