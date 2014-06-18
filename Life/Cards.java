import java.util.*;
import java.io.*;

public class Cards {

    ArrayList<Tile> tiles;
    ArrayList<Raffle> raffleCards;
    ArrayList<Expense> expenses;
    ArrayList<Career> careers;
    ArrayList<Pet> pets;
    ArrayList<House> houses;

    public Cards() {

	pets = new ArrayList<Pet>();
	careers = new ArrayList<Career>();
	houses = new ArrayList<House>();
	expenses = new ArrayList<Expense>();
	raffleCards = new ArrayList<Raffle>();
	tiles = new ArrayList<Tile>();      
       
	// pets
	pets.add( new Pet( 200, "Cat" ) );
	pets.add( new Pet( 250, "Dog" ) );
	pets.add( new Pet( 30, "Hamster" ) );
	pets.add( new Pet( 5, "Fish" ) );
	pets.add( new Pet( 80, "Exotic Bird" ) );

	houses.add( new House("Malibu Mansion", 80000) );
	houses.add( new House("Cozy Cottage", 40000) );
	houses.add( new House("Sururban House", 40000) );
	houses.add( new House("NYC loft",50000) );

	expenses.add( new Expense( 100, "Lost wallet." ) );
	expenses.add( new Expense( 200, "Need math tutoring") );
	expenses.add( new Expense( 350, "Broke iphone") );
	expenses.add( new Expense( 1500, "House flooded") );
	expenses.add( new Expense( 5000, "Car Stolen") );
	expenses.add( new Expense( 100, "Gave Gifts") );
	expenses.add( new Expense( 200, "Grocery Splurge") );
	expenses.add( new Expense( 300, "Designer Shoe Sale") );
	expenses.add( new Expense( 3000, "Vacationed in Miami") );
	expenses.add( new Expense( 200, "Went to a baseball game") );
	expenses.add( new Expense( 1500, "Charity Donation" ) );


	tiles.add( new Tile(  "Won the lottery!", 10000 ) );
	tiles.add( new Tile(  "Found money on the Sidewalk!", 50 ) );
	tiles.add( new Tile(  "Won a poker game.", 200 ) );
	tiles.add( new Tile(  "Won a horse bet.", 500 ) );
	tiles.add( new Tile(  "Won a Scholarship award", 2000 ) );
	tiles.add( new Tile(  "Your stocks went up.", 1000 ) );
	tiles.add( new Tile(  "You fond a Metrocard.", 25 ) );
	tiles.add( new Tile(  "You babysat", 50 ) );
	tiles.add( new Tile(  "You tutored.", 100 ) );
	tiles.add( new Tile(  "You returned a lost pet.", 200 ) );
	tiles.add( new Tile( "You hosted a bakesale,", 100) );



	careers.add( new Career("Doctor", true, 100000) );
	careers.add( new Career("Computer Consultant", true, 80000) );
	careers.add( new Career("Artist", false, 30000) );
	careers.add( new Career("Salesperson", false, 50000) );
	careers.add( new Career("Athlete", false, 70000) );
	careers.add( new Career("Accountant", true, 90000) );
	careers.add( new Career("Teacher", true, 50000) );
	careers.add( new Career("Police Officer", false, 60000) );
	careers.add( new Career("Entertainer", false, 90000) );

	raffleCards.add( new Raffle( 100, 1) );
	raffleCards.add( new Raffle( 200, 2) );
	raffleCards.add( new Raffle( 300, 3) );
	raffleCards.add( new Raffle( 400, 4) );
	raffleCards.add( new Raffle( 500, 5) );
	raffleCards.add( new Raffle( 600, 6) );
	raffleCards.add( new Raffle( 700, 7) );
	raffleCards.add( new Raffle( 800, 8) );
	raffleCards.add( new Raffle( 900, 9) );

	shuffle(raffleCards);
	shuffle(tiles);
	shuffle(expenses);

	
    }

    public Tile getTile() {
	Tile ret = tiles.remove(0);
        tiles.add( ret );
	return ret;
    }

    public Raffle getRaffle() {
	Raffle ret = raffleCards.remove(0);
	raffleCards.add(ret);
	return ret;
    }

    public Expense getExpense() {
	Expense ret = expenses.remove(0);
	expenses.add(ret);
	return ret;
    }

    public Career getCareer() {
	return careers.remove( (int) (Math.random() * careers.size()) );
    }

    public Pet getPet() {
	return pets.remove( (int) (Math.random() * pets.size()) );
    }

    public House getHouse() {
	return houses.remove( (int) (Math.random() * houses.size()) );
    }


    public void shuffle(ArrayList arr) {
	for (int i = 0; i <40; i++) {
	    int a = (int) (Math.random() * arr.size());
	    int b = (int) (Math.random() * arr.size());
	    Object c = arr.get( a );
	    Object d = arr.get( b );
	    arr.set( a, d);
	    arr.set( b, c);
	}
    }


    public static void main( String[] args) {
	Cards cards = new Cards();
	System.out.println( cards.getExpense().getMessage() );
    }

}
