public class Career {

    String title;
    boolean degree;

    public Career(String t, boolean d) {
	title = t;
	degree = d;
    }

    public String getTitle() {
	return title;
    }

    public boolean DegreeNeeded() {
	return degree;
    }
}
