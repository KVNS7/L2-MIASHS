public class Laptop extends Computer
{
    private double screenSize;
    
    public Laptop(int ram, int mem,int size){
        super(ram,mem);
        this.screenSize = size;
    }

    public double getSize(){
        return screenSize;
    }
}
