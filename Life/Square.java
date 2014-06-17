import java.util.*;
import java.io.*;

public class Square implements Comparable{

    private Square _next;
    private int[] color;
    private int row;
    private int col;
    private int _type;

    
    public Square(int r, int c){
	row = r;
	col = c;
	_next = null;
    }

    public Square( Square next ){
	_next = next;
    }

    public Square getNext(){
	return _next;
    }
    
    public Square setNext( Square next){
	_next = next;
	return _next;
    }

    public int setType(int t) {
	int ret = _type;
	_type = t;
	return ret;
    }
    
    public int[] getColor(){
	return color;
    }

    public int getRow(){
	return row;
    }

    public int getCol(){
	return col;
    }

    public int getType(){
	return _type;
    }

    // 1 is stop
    // 2 is raffle
    // 3 is spin again
    // 4 is life tile
    // 5 is pay day
    // 6 is expense

    public boolean equals(Object o) {
	if (o instanceof Square && row == ((Square)o).getRow() & col == ((Square)o).getCol() ) {
	    return true;
	}
	return false;
    }

    public int compareTo(Object o) {
	return 0;
    }

}
