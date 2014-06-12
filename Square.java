public class Square {

    private Square next;
    private int[] color;
    private int xcor;
    private int ycor;
    private String message;

    public Square(){
	
    }

    public Square getNext(){
	return next;
    }
    
    public int[] getColor(){
	return color;
    }

    public int getXcor(){
	return xcor;
    }

    public int getYcor(){
	return ycor;
    }

    public String getMessage(){
	return message;
    }

}
