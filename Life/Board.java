public class Board {

    private int[][] _board;
    private Square colHead, noColHead, mergeHead, cur, begin;

    public Board() {
	_board = new int[30][30];

	//starting point
	_board[16][20] = 9;

	// college path
	_board[17][21] = 1;
	_board[18][21] = 14;
  
	for (int i = 22; i < 27; i++) {
	    _board[18][i] = 1;
	}
	
	_board[18][27] = 13;

	for (int i = 17; i > 8; i--) {
	    _board[i][27] = 1;
	}

	// no college path
  
	_board[15][21] = 2;
  
	for (int i = 14; i > 8; i--) {
	    _board[i][35 - i] = 23;
	    //corners
	    _board[i-1][35 - i] = 21;
	}

	_board[14][21] = 2;


	//merge
  
	for (int i = 8; i>2; i--) {
	    _board[i][27] = 3;
	}


	_board[2][26] = 34;
	_board[1][25] = 34;
	_board[0][24] = 3;

	_board[2][27] = 32;
	_board[1][26] = 32;
	_board[0][25] = 32;

	_board[0][23] = 3;
	_board[0][22] = 31;
	_board[1][22] = 33;
	_board[1][21] = 31;
  
	for (int i = 2; i <9; i++) {
	    _board[i][21] = 3;
	}


	_board[9][20] = 31;
	_board[10][19] = 31;
	_board[11][19] = 3;
	_board[12][18] = 31;

	_board[9][21] = 33;
	_board[10][20]= 33;
	_board[12][19] = 33;
	_board[13][18] = 33;


	_board[13][17] = 3;
	_board[13][16] = 3;
	_board[13][15] = 3;
	_board[13][14] = 34;

	_board[12][14] = 3;
	_board[11][14] = 3;
	_board[10][14] = 3;
	_board[9][14] = 31;
	_board[9][15] = 3;
	_board[9][16] = 33;

  
	for (int i = 8; i > 1; i--) {
	    _board[i][16] = 3;
	}
  
	_board[1][16] = 32;
	_board[0][15] = 32;

	_board[1][15] = 34;
	_board[0][14] = 3;
	_board[0][13] = 3;
	_board[0][12] = 3;

	_board[0][11] = 31;
	_board[1][11] = 33;
	_board[1][10] = 31;
  
	for (int i = 2; i <8; i++) {
	    _board[i][10] = 3;
	}
	_board[7][10] = 33;
	_board[7][9] = 31;

	for (int i = 8; i<15; i++) {
	    _board[i][9] = 3;
	}

	_board[15][9] = 34;
  
	_board[15][10] = 32;
	_board[16][10] = 34;

	_board[16][11] = 32;
	_board[17][11] = 3;

	_board[18][11] = 33;

	_board[18][10] = 3;
	_board[18][9] = 3;
	_board[18][8] = 3;
	_board[18][7] = 34;

	_board[17][7] = 3;
	_board[16][7] = 32;

	_board[16][6] = 34;
  
	for (int i = 15; i>4; i--) {
	    _board[i][6] = 3;
	}

	_board[4][6] = 31;

	_board[4][7] = 33;
	_board[3][7] = 3;
	_board[2][7] = 3;
	_board[1][7] = 32;
	_board[1][6] = 34;
	_board[0][5] = 3;
	_board[0][6] = 32;
	_board[0][4] = 3;
	_board[0][3] = 31;
	_board[1][3] = 33;
	_board[1][2] = 31;
	_board[2][2] = 33;
	_board[2][1] = 31;


	for (int i = 3; i < 18; i++) {
	    _board[i][1] = 3;
	}

	_board[18][2] = 32;
	_board[19][3] = 32;
	_board[20][4] = 32;

	_board[18][1] = 34;
	_board[19][2] = 34;
	_board[20][3] = 34;
	_board[21][4] = 34;
  
	for (int i =5; i<24; i++) {
	    _board[21][i] = 3;
	}

	_board[21][24] = 32;
	_board[22][24] = 34;
	_board[22][25] = 32;
	_board[23][25] = 3;
	_board[24][25] = 3;
	_board[25][25] = 33;

	for (int i = 24; i>10; i--) {
	    _board[25][i] = 3;
	}

	_board[24][10] = 32;
	_board[25][10] = 34;
	_board[24][9] = 3;
	_board[24][8] = 34;
	_board[23][8] = 32;

	_board[23][7] = 3;
	_board[23][6] = 3;
	_board[23][5] = 3;
	_board[23][4] = 3;

	_board[23][3] = 31;
	_board[24][3] = 33;
	_board[24][2] = 31;

	_board[25][2] = 3;
	_board[26][2] = 3;
	_board[27][2] = 3;

	_board[28][2] = 34;

	for (int i = 3; i < 25; i++) {
	    _board[28][i] = 3;
	}

	initializeLinked();
	implementColors();

	
    }

    public int[][] getBoard() {
	return _board;
    }

    public String toString() {
	String retStr = "";

	for (int i =0; i < _board.length; i++) {
	    String line = "";
	    for (int n =0; n <_board[i].length;n++) {
		if (_board[i][n] > 9) {
		    line += "" + _board[i][n] % 10;
		}
		else if (_board[i][n] == 0) {
		    line += " ";
		}
		else {
		    line +=  _board[i][n];
		}
		    
	    }
	    retStr+= line + "\n";
	}
	return retStr;

    }	

    public void initializeLinked() {
	
	begin  = new Square(16,21);
	colHead = new Square(17,21);
	noColHead = new Square(15,21) ;
	mergeHead = new Square(8,27);


	//college
	initialize( 1, colHead);
	
	cur.setNext(mergeHead);

	
	//nocollege
	initialize( 2, noColHead);
	cur.setNext(mergeHead);


	//merged
	initialize( 3, mergeHead );
	
	
    }

    public void initialize( int num, Square sq ) {
	int x = sq.getRow();
	int y = sq.getCol();
	initialize( num, x + 1, y, sq, begin);
	initialize( num, x - 1, y, sq, begin);
	initialize( num, x, y + 1, sq, begin);
	initialize( num, x, y - 1, sq, begin);
    }
	

    public void initialize(int num, int x, int y, Square last, Square last2) {


	if ( x < 0 || x >= _board.length || y < 0 || y >= _board[0].length ) {
	    return;
	}


	else if ( ! ((_board[x][y] < 10 && _board[x][y] == num) || (_board[x][y] / 10) == num)) {
	    return;
	}

	else if ( x == last2.getRow() && y == last2.getCol() ) {
	    return;
	}

	else {

	    cur = new Square(x,y);
	    last.setNext(cur );

	    
	    initialize( num, x + 1, y, cur, last);
	    initialize( num, x - 1, y, cur, last);
	    initialize( num, x, y + 1, cur, last);
	    initialize( num, x, y - 1, cur, last);
	    
	}
	
	
    }

    public Square getColHead() {
	return colHead;
    }
    public Square getNoColHead() {
	return noColHead;
    }
	    

    public void implementColors() {

	int[] cTypes = new int[17];
	int[] ncTypes = new int[13];
	int[] mTypes = new int[204];


	//implement no college
	ncTypes[0] = 1;
	setColors(2, 3, 0, 13, ncTypes);
	setColors(3, 3, 0, 13, ncTypes);
	setColors(4, 6, 0, 13, ncTypes);
	System.out.println("cat");


	//implement college
	cTypes[16] = 1;
	setColors(2, 4, 0, 17, cTypes);
	setColors(3, 4, 0, 17, cTypes);
	setColors(4, 8, 0, 17, cTypes);

	//implements rest
	for (int i = 0; i < 200; i+= 8) {
	    if (i == 16 || i== 40) {
		mTypes[i] = 1;
		setColors(6,1,i,i+8,mTypes);
	    }
	    else {
		setColors(6,2,i,i+8,mTypes);
	    }
	    setColors(5,1,i,i+8,mTypes);
	    setColors(3,1,i,i+8,mTypes);
	    setColors(2,2,i,i+8,mTypes);
	    setColors(4,2,i,i+8,mTypes);
	}

	setColors( 6, 2, 200, 204, mTypes );
	setColors( 2, 2, 200, 204, mTypes );

	Square current = colHead;
	for (int i = 0; i < 17; i++) {
	    current.setType(cTypes[i]);
	    setArr(current);
	    current = current.getNext();
	}

	current = noColHead;
	for (int i = 0; i<13; i++){
	    current.setType(ncTypes[i]);
	    setArr(current);
	    current = current.getNext();
	}

	current = mergeHead;
	for (int i = 0; i<204; i++) {
	    current.setType(mTypes[i]);
	    setArr(current);
	    current = current.getNext();
	}

    }

    public void setArr(Square s) {
	int r = s.getRow();
	int c = s.getCol();

	if ( _board[r][c] < 10) {
	    _board[r][c] = s.getType();
	}
	else {
	    int num = _board[r][c] % 10;
	    _board[r][c] = num + (10 * s.getType());
	}
    }

    public void setColors( int type, int frequency, int begin, int end, int[] set ) {

	for (int i = 0; i < frequency; i++) {
	    int num = 1;
	    while ( set[num] != 0 ) {
		num = ((int) (Math.random() * (end-begin))) + begin;
		if (num == (end -1)) {
		    num = begin;
		}
		else {
		    num++;
		}
	    }
	    set[num] = type;
	}
    }
	    
	
	    
	// 1 is stop
	// 2 is raffle
	// 3 is spin again
	// 4 is life tile
	// 5 is pay day
	// 6 is expense
	
    public String getArray( int[][] arr ) {
	String retStr = "";
	for (int i =0; i < arr.length; i++) {
	    String line = "";
	    for (int n =0; n < arr[i].length;n++) {
		if (arr[i][n] > 9) {
		    line += "" + arr[i][n] % 10;
		}
		else if (arr[i][n] == 0) {
		    line += " ";
		}
		else {
		    line +=  arr[i][n];
		}
		    
	    }
	    retStr+= line + "\n";
	}
	return retStr;
    }
	
	


    public static void main( String[] args ) {

	Board board = new Board();
	int[][] test = new int[30][30];
	int i = 0;

	//Square thing = board.getColHead();
	Square thing = board.getNoColHead();
	while (thing != null) {
	    test[ thing.getRow() ][ thing.getCol() ] = thing.getType();
	    i++;
	    thing = thing.getNext();
	}

	//System.out.println( i + "");
	//System.out.println( board.getArray( test ) );
	//System.out.println( board );
	for (int n = 0; n <30 ; n++ ) {
	    for (int num = 0; num <30; num++) {
		//System.out.println( board.getBoard()[n][num] );
	    }
	}


     
    }


}
