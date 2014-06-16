public class Career {

    String title;
    boolean degree;
    int salary;

    public Career(String t, boolean d, int s) {
	title = t;
	degree = d;
	salary = s;
    }

    public String getTitle() {
	return title;
    }

    public boolean DegreeNeeded() {
	return degree;
    }

    public int getSalary() {
	return salary;
    }
}
