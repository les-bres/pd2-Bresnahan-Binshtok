public class Expense {

    private int cost;
    private String message;

    public Expense( int c, String m ) {
	cost = c;
	message = m;
    }

    public int getCost() {
	return cost;
    }

    public String getMessage() {
	return message;
    }

}