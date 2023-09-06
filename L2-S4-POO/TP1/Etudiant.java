public class Etudiant{
	private String name;
	private double []grades;

	public Etudiant(String nom, int nbNotes){
		name = nom;
		grades = new double[nbNotes];
	}

	private void setNote(int i, double note){ grades[i] = note; }

	private double getNote(int i){ return grades[i]; }

	private double moyenne(){
		int i;
        		double x = 0;
        		for(i = 0; i<grades.length;i++){
    			x+=grades[i];
      		}
     		x = x/grades.length;
		return x;
	}
}

