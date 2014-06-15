public class Salary {

    int tax;
    int salary;

    public Salary(int t, int s) {
	salary = s;
	tax = t;
    }

    public int getSalary() {
	return salary;
    }

    public int getTax() {
	return tax;
    }
}
