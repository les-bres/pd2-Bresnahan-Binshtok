import java.util.*;
import java.io.*;

public class Cards {

    Tile[] tiles;
    Raffle[] raffleCards;
    Expense[] expenses;
    ArrayList<Career> careers;
    ArrayList<Pet> pets;
    ArrayList<House> houses;

    public Cards() {

	pets = new ArrayList<Pet>();
	careers = new ArrayList<Career>();
	houses = new ArrayList<House>();
	expenses = new Expense[11];
	raffleCards = new Raffle[9];
	tiles = new Tile[11];      
       
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

	expenses[0] = new Expense( 100, "Lost wallet." );
	expenses[1] = new Expense( 200, "Need math tutoring");
	expenses[2] = new Expense( 350, "Broke iphone");
	expenses[3] = new Expense( 1500, "House flooded");
	expenses[4] = new Expense( 5000, "Car Stolen");
	expenses[5] = new Expense( 100, "Gave Gifts");
	expenses[6] = new Expense( 200, "Grocery Splurge");
	expenses[7] = new Expense( 300, "Designer Shoe Sale");
	expenses[8] = new Expense( 3000, "Vacationed in Miami");
	expenses[9] = new Expense( 200, "Went to a baseball game");
	expenses[10] = new Expense( 1500, "Charity Donation" );


	tiles[0] = new Tile(  "Won the lottery!", 10000 );
	tiles[1] = new Tile(  "Found money on the Sidewalk!", 50 );
	tiles[2] = new Tile(  "Won a poker game.", 200 );
	tiles[3] = new Tile(  "Won a horse bet.", 500 );
	tiles[4] = new Tile(  "Won a Scholarship award", 2000 );
	tiles[5] = new Tile(  "Your stocks went up.", 1000 );
	tiles[6] = new Tile(  "You fond a Metrocard.", 25 );
	tiles[7] = new Tile(  "You babysat", 50 );
	tiles[8] = new Tile(  "You tutored.", 100 );
	tiles[9] = new Tile(  "You returned a lost pet.", 200 );
	tiles[10] = new Tile( "You hosted a bakesale,", 100);



	careers.add( new Career("Doctor", true, 100000) );
	careers.add( new Career("Computer Consultant", true, 80000) );
	careers.add( new Career("Artist", false, 30000) );
	careers.add( new Career("Salesperson", false, 50000) );
	careers.add( new Career("Athlete", false, 70000) );
	careers.add( new Career("Accountant", true, 90000) );
	careers.add( new Career("Teacher", true, 50000) );
	careers.add( new Career("Police Officer", false, 60000) );
	careers.add( new Career("Entertainer", false, 90000) );

	raffleCards[0] = new Raffle( 100, 1);
	raffleCards[0] = new Raffle( 200, 2);
	raffleCards[0] = new Raffle( 300, 3);
	raffleCards[0] = new Raffle( 400, 4);
	raffleCards[0] = new Raffle( 500, 5);
	raffleCards[0] = new Raffle( 600, 6);
	raffleCards[0] = new Raffle( 700, 7);
	raffleCards[0] = new Raffle( 800, 8);
	raffleCards[0] = new Raffle( 900, 9);

	
    }

    public Tile getTile() {
	Tile ret = tiles[0];
	tiles[0] = tiles[ tiles.length - 1];
	tiles[ tiles.length -1] = ret;
	return ret;
    }

    public Raffle getRaffle() {
	Raffle ret = raffleCards[0];
	raffleCards[0] = raffleCards[ raffleCards.length - 1 ];
	raffleCards[ raffleCards.length - 1 ] = ret;
	return ret;
    }

    public Expense getExpense() {
	Expense ret = expenses[0];
	expenses[0] = expenses[ expenses.length - 1 ];
	expenses[ expenses.length - 1 ]= ret;
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


    public static void main( String[] args) {
	Cards cards = new Cards();
	System.out.println( cards.getTile().getMessage() );
    }

}
