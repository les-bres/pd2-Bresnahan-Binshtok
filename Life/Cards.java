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