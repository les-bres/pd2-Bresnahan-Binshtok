public class Board {

    int[][] _board;

    public Board() {

	_board = new int[30][25];

	_board[16][20] = 1;

    }

    public String toString() {
	String retStr = "";
	for (int i = 0; i< _board.length; i++) {
	    String line ="";
	    for (int n = 0; n < _board[0].length; n++) {
		if (_board[i][n] == 0) {
		    line+= " ";
		}
		else {
		    line+=""+_board[i][n];
		}
	    }
	    retStr+=line;
	}
	return retStr;
    }

    public static void main( String[] args ) {

	Board b = new Board();
	System.out.println(b);

    }
}