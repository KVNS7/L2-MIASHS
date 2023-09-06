import java.util.Random;

public class Lancer
{
    private De[] outcomes;
    
    public Lancer(int nbLancers)
    {
        Random random = new Random();
        outcomes = new De[nbLancers];
        for(int i = 0;i < nbLancers;i++) outcomes[i] = new De(random.nextInt(5) + 1);
    }
    
    public De[] resultats() {return outcomes;}
}