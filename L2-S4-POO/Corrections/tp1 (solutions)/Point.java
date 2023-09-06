public class Point
{
    private double x,y;
    
    // Question 1
    public Point(double x,double y)
    {
        this.x = x; this.y = y;
    }
    
    // Question 2
    public double getX() {return x;}
    public double getY() {return y;}
    public String etat() {return "x = " + x + " et y = " +y;}
    public void deplacer(double x,double y) {this.x = x;this.y = y;}
    
    // Question 3
    public boolean comparer(Point other)
    {
        return this.x == other.x && this.y == other.y;
    }
}