public class Exercice4
{
    public static void main(String[] args)
    {
        String str = args[0];
        
        int i  = 0, n = str.length(), m = n/2;
        
        while (i < m && str.charAt(i) == str.charAt(n - i - 1)) {i++;}
        
        if (i == m) 
        {
            System.out.format("%s est un palindrome",str);
        }
        else
        {
             System.out.format("%s n'est pas un palindrome",str);   
        }
    }
}