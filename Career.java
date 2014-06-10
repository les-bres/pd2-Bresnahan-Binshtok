public class Career {

    String title;
    boolean degree;

    public class Career(String t, boolean d) {
	title = t;
	degree = d;
    }

    public String getTitle() {
	return title;
    }

    public String DegreeNeeded() {
	return degree;
    }
}
