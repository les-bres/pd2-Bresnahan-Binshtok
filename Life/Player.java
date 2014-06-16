import java.util.*;
import java.io.*;

public class Player {

    private boolean college;
    private ArrayList<Tile> tiles;
    private Career career;
    private House house;
    private Salary salary;
    private int money, gender;
    //private square cur;
    //private color carC;

    public Player( int gen, boolean col ) {
	gender = gen;
	college = col;
	tiles = new ArrayList<Tile>();
	career = null;
	house = null;
	salary = null;
	money = 0;
    }

}
