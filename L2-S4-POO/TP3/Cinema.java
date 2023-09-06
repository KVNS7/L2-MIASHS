public class Cinema {
    private String[] films;
    
    public Cinema (int salles){
        this.films = new String[salles];
    }
    
    public String film(int i){
        return films [i-1];
    }
    
    public void programmer(int i, String film){
        films[i-1] = film;
    }
}