public class Raffle {
    private int reward;
    private String message;
    private int num;


    public Raffle( int rew, String m, int n ) {
	reward = rew;
	message = m;
	num = n;
    }

    public int getReward() {
	return reward;
    }

    public String getMessage() {
	return message;
    }

    public int getNum() {
	return num;
    }
}