public class CinemaQuartier extends Cinema {    
    public CinemaQuartier() 
    {
        super(1);
    }

    public void programmer(String film) {
        super.programmer(1,film);
    }
    
    public String film(){
        return super.film(1);
    }
}