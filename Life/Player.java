import java.util.*;
import java.io.*;

public class Player {

    private boolean college;
    private Career career;
    private House house;
    private Pet pet;
    private int money, gender;

    public Player( int gen, boolean col ) {
	gender = gen;
	college = col;
	career = null;
	house = null;
	pet = null;
	money = 1000;
    }
    
    public int getMoney() {
	return money;
    }
    
    public void addMoney(int m) {
	money += m;
    }
    public Career getCareer() {
	return career;
    }

    public void setCareer(Career c) {
	career = c;
    }

    public boolean getCollege() {
	return college;
    }

    public void setHouse( House h ) {
	house = h;
    }

    public House getHouse() {
	return house;
    }

    public void setPet( Pet p ) {
	pet = p;
    }

    public Pet getPet() {
	return pet;
    }
	    

}
