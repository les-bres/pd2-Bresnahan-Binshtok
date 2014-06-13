public class Player {

    private boolean college, autoIns, homeIns;
    private ArrayList<Integer> stocks;
    private ArrayList<Tile> tiles;
    private Career career;
    private House house;
    private Salary salary;
    private int money, carC, gender;
    private square cur;

    public Player( int car, int gen ) {
	carC =  car;
	gender = gen;
	college = false;
	autoIns = false;
	homeIns = false;
	stocks = new ArrayList<Integer>();
	tiles = new ArrayList<Tile>();
	career = null;
	house = null;
	salary = null;
	money = 0;
    }

}
