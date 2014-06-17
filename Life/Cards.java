import java.util.*;
import java.io.*;

public class Cards {

    Queue<Tile> tiles;
    Queue<Raffle> raffleCards;
    Queue<Expense> expenses;
    ArrayList<Career> careers;
    ArrayList<Pet> pets;
    ArrayList<House> houses;

    public Cards() {
	// pets
	pets.add( new Pet( 200, "Cat" ) );
	pets.add( new Pet( 250, "Dog" ) );
	pets.add( new Pet( 30, "Hamster" ) );
	pets.add( new Pet( 5, "Fish" ) );
	pets.add( new Pet( 80, "Exotic Bird" ) );

	expenses.add( new Expense( 100, "Lost wallet." ) );
	expenses.add( new Expense( 200, "Need math tutoring") );
	expenses.add( new Expense( 350, "Broke iphone") );
	expenses.add( new Expense( 1500, "House flooded") );
	expenses.add( new Expense( 5000, "Car Stolen") );


	careers.add( new Career("Doctor", true, 100000) );
	careers.add( new Career("Computer Consultant", true, 80000) );
	careers.add( new Career("Artist", false, 30000) );
	careers.add( new Career("Salesperson", false, 50000) );
	careers.add( new Career("Athlete", false, 70000) );
	careers.add( new Career("Accountant", true, 90000) );
	careers.add( new Career("Teacher", true, 50000) );
	careers.add( new Career("Police Officer", false, 60000) );
	careers.add( new Career("Entertainer", false, 90000) );

	
    }

    public Tile getTile() {
	Tile ret = tiles.remove();
	tiles.add( ret );
	return ret;
    }

    public Raffle getRaffle() {
	Raffle ret = raffleCards.remove();
	raffleCards.add( ret );
	return ret;
    }

    public Expense getExpense() {
	Expense ret = expenses.remove();
	expenses.add( ret );
	return ret;
    }

    public Career getCareer() {
	return careers.remove( (int) (Math.random() * careers.size()) );
    }

    public Pet getPet() {
	return pets.remove( (int) (Math.random() * careers.size()) );
    }

    public House getHouse() {
	return houses.remove( (int) (Math.random() * careers.size()) );
    }


}