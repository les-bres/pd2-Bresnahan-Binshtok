public class Board {

    int[][] _board;

    public Board() {
	_board = new int[30][30];

	//starting point
	_board[16][20] = 5;

	// college path
	_board[17][21] = 1;
  
	for (int i = 21; i < 28; i++) {
	    _board[18][i] = 1;
	}

	for (int i = 17; i > 8; i--) {
	    _board[i][27] = 1;
	}

	// no college path
  
	_board[15][21] = 2;
  
	for (int i = 14; i > 8; i--) {
	    _board[i][35 - i] = 2;
	    //corners
	    _board[i-1][35 - i] = 2;
	}


	//merge
  
	for (int i = 8; i>2; i--) {
	    _board[i][27] = 3;
	}

	_board[2][26] = 3;
	_board[1][25] = 3;
	_board[0][24] = 3;
	_board[0][23] = 3;
	_board[1][22] = 3;
  
	for (int i = 2; i <9; i++) {
	    _board[i][21] = 3;
	}

	_board[9][20] = 3;
	_board[10][19] = 3;
	_board[11][19] = 3;
	_board[12][18] = 3;
	_board[13][17] = 3;
	_board[13][16] = 3;
	_board[13][15] = 3;
	_board[12][14] = 3;
	_board[11][14] = 3;
	_board[10][14] = 3;
	_board[9][15] = 3;
  
	for (int i = 8; i > 1; i--) {
	    _board[i][16] = 3;
	}
  
	_board[1][15] = 3;
	_board[0][14] = 3;
	_board[0][13] = 3;
	_board[0][12] = 3;
	_board[1][11] = 3;
  
	for (int i = 2; i <8; i++) {
	    _board[i][10] = 3;
	}

	for (int i = 8; i<15; i++) {
	    _board[i][9] = 3;
	}

  
	_board[15][10] = 3;
	_board[16][11] = 3;
	_board[17][11] = 3;
	_board[18][10] = 3;
	_board[18][9] = 3;
	_board[18][8] = 3;
	_board[17][7] = 3;
	_board[16][7] = 3;
  
	for (int i = 15; i>4; i--) {
	    _board[i][6] = 3;
	}
  
	_board[4][7] = 3;
	_board[3][7] = 3;
	_board[2][7] = 3;
	_board[1][6] = 3;
	_board[0][5] = 3;
	_board[0][4] = 3;
	_board[1][3] = 3;
	_board[2][2] = 3;


	for (int i = 3; i < 18; i++) {
	    _board[i][1] = 3;
	}

	_board[18][2] = 3;
	_board[19][3] = 3;


	_board[20][4] = 3;
  
	for (int i =5; i<24; i++) {
	    _board[21][i] = 3;
	}

	_board[22][24] = 3;
	_board[23][25] = 3;
	_board[24][25] = 3;
	_board[25][24] = 3;

	for (int i = 23; i>10; i--) {
	    _board[25][i] = 3;
	}

	_board[24][10] = 3;
	_board[24][9] = 3;
	_board[24][8] = 3;
	_board[23][7] = 3;
	_board[23][6] = 3;
	_board[23][5] = 3;
	_board[23][4] = 3;
	_board[24][3] = 3;

	_board[25][2] = 3;
	_board[26][2] = 3;
	_board[27][2] = 3;
	_board[28][3] = 3;
	_board[28][4] = 3;

	for (int i = 5; i < 25; i++) {
	    _board[28][i] = 3;
	}
    }

    public int[][] getBoard() {
	return _board;
    }

}
