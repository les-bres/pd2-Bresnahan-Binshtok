public class Question {

    private String message;
    private boolean buttonAns;

    public Question(String s, boolean b) {
	message = s;
	buttonAns = b;
    }


    public String getMessage() {
	return message;
    }

    public boolean getAnsType() {
	return buttonAns;
    }

}
