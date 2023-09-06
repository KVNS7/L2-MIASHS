public class Exercice2 {
    /*
    String str1 = "Programmation"; -> pool de chaines
    String str2 = "programmation"; -> pool de chaines
    String str3 = new String("Programmation"); -> en dehors du pool de chaines
    String str4 = "Programmation" -> le pool de chaines ne contient que des copies uniques de
    chacune des chaines donc str4 == str1
    
    1. str1 == str2 -> false car les premières lettres sont différents ('P' != 'p')
    2. str1 == str1.intern() -> true car str1 est dans le pool de chaines
    3. str1 == str3 -> false car str1 est dans le pool de chaine et pas str3
    4. str1 == str3.intern() -> true car les chaines de caractères sont identiques
    5. str3 == str3.intern() -> false car str3 n'est pas dans le pool de chaines 
    */
}