public class House {

    String name;
    String descrip;
    int cost;
    int insurance;

    public House( String n, String d, int c, int i ) {
	name = n;
	descrip = d;
	cost = c;
	insurance = i;
    }

    public String getName() {
	return name;
    }

    public String getDescrip() {
	return descrip;
    }
    
    public int getCost() {
	return cost;
    }

    public int getInsurance() {
	return insurance;
    }
}
