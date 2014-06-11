int[][] _board;

public void getBoard() {

  _board = new int[30][30];

  //starting point
  _board[16][20] = 5;

  // college path
  _board[17][21] = 1;
  _board[18][22] = 1;
  _board[18][23] = 1;
  _board[18][24] = 1;
  _board[18][25] = 1;
  _board[17][26] = 1;
  _board[16][27] = 1;
  _board[15][27] = 1;
  _board[14][27] = 1;
  _board[13][27] = 1;
  _board[12][27] = 1;
  _board[11][27] = 1;
  _board[10][27] = 1;
  _board[9][27] = 1;

  // no college path
  _board[15][21] = 2;
  _board[14][21] = 2;
  _board[13][22] = 2;
  _board[12][23] = 2;
  _board[11][24] = 2;
  _board[10][25] = 2;
  _board[9][26] = 2;

  //merge
  _board[8][27] = 3;
  _board[7][27] = 3;
  _board[6][27] = 3;
  _board[5][27] = 3;
  _board[4][27] = 3;
  _board[3][27] = 3;
  _board[2][26] = 3;
  _board[1][25] = 3;

  _board[0][24] = 3;
  _board[0][23] = 3;
  _board[1][22] = 3;
  _board[2][21] = 3;
  _board[2][21] = 3;      
  _board[3][21] = 3;
  _board[4][21] = 3;
  _board[5][21] = 3;
  _board[6][21] = 3;
  _board[7][21] = 3;
  _board[8][21] = 3;
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
  _board[8][16] = 3;
  _board[7][16] = 3;
  _board[6][16] = 3;
  _board[5][16] = 3;
  _board[4][16] = 3;
  _board[3][16] = 3;
  _board[2][16] = 3;
  _board[1][15] = 3;
  _board[0][14] = 3;
  _board[0][13] = 3;
  _board[0][12] = 3;

  _board[1][11] = 3;
  _board[2][10] = 3;
  _board[3][10] = 3;
  _board[4][10] = 3;
  _board[5][10] = 3;
  _board[6][10] = 3;
  _board[7][10] = 3;
  _board[8][9] = 3;
  _board[9][9] = 3;
  _board[10][9] = 3;
  _board[11][9] = 3;
  _board[12][9] = 3;
  _board[13][9] = 3;
  _board[14][9] = 3;
  _board[15][10] = 3;
  _board[16][11] = 3;
  _board[17][11] = 3;
  _board[18][10] = 3;
  _board[18][9] = 3;
  _board[18][8] = 3;
  _board[17][7] = 3;
  _board[16][7] = 3;
  _board[15][6] = 3;
  _board[14][6] = 3;
  _board[13][6] = 3;
  _board[12][6] = 3;
  _board[11][6] = 3;
  _board[10][6] = 3;
  _board[9][6] = 3;
  _board[8][6] = 3;
  _board[7][6] = 3;
  _board[6][6] = 3;
  _board[5][6] = 3;
  _board[4][7] = 3;
  _board[3][7] = 3;
  _board[2][7] = 3;
  _board[1][6] = 3;
  _board[0][5] = 3;
  _board[0][4] = 3;
  _board[1][3] = 3;
  _board[2][2] = 3;

  _board[3][1] = 3;
  _board[4][1] = 3;
  _board[5][1] = 3;
  _board[6][1] = 3;
  _board[7][1] = 3;
  _board[8][1] = 3;
  _board[9][1] = 3;
  _board[10][1] = 3;
  _board[11][1] = 3;
  _board[12][1] = 3;
  _board[13][1] = 3;
  _board[14][1] = 3;
  _board[15][1] = 3;
  _board[16][1] = 3;
  _board[17][1] = 3;
  _board[18][2] = 3;
  _board[19][3] = 3;


  _board[20][4] = 3;
  _board[21][5] = 3;
  _board[21][6] = 3;
  _board[21][7] = 3;
  _board[21][8] = 3;
  _board[21][9] = 3;
  _board[21][10] = 3;
  _board[21][11] = 3;
  _board[21][12] = 3;
  _board[21][13] = 3;
  _board[21][14] = 3;
  _board[21][15] = 3;
  _board[21][16] = 3;
  _board[21][17] = 3;
  _board[21][18] = 3;
  _board[21][19] = 3;
  _board[21][20] = 3;
  _board[21][21] = 3;
  _board[21][22] = 3;
  _board[21][23] = 3;
  _board[22][24] = 3;
  _board[23][25] = 3;
  _board[24][25] = 3;
  _board[25][24] = 3;

  _board[25][23] = 3;
  _board[25][22] = 3;
  _board[25][21] = 3;
  _board[25][20] = 3;
  _board[25][19] = 3;
  _board[25][18] = 3;
  _board[25][17] = 3;
  _board[25][16] = 3;
  _board[25][15] = 3;
  _board[25][14] = 3;
  _board[25][13] = 3;
  _board[25][12] = 3;
  _board[25][11] = 3;

  _board[24][10] = 3;
  _board[24][9] = 3;
  _board[24][8] = 3;
  _board[23][7] = 3;
  _board[23][6] = 3;
  _board[23][5] = 3;
  _board[23][4] = 3;
  _board[24][3] = 3;
  _board[25][2] = 3;

  _board[25][2] = 3;
  _board[26][2] = 3;
  _board[27][2] = 3;
  _board[28][3] = 3;
  _board[28][4] = 3;

  for (int i = 5; i < 25; i++) {
      _board[28][i] = 3;
  }



}

void setup(){
  
  //Initialize Board
  size(760,760);
  background(144,238,144);
  getBoard();
  
  //Color Board
  for (int i = 0; i < 30; i++){
    for (int j = 0; j < 30; j++){
      if (_board[i][j] == 0){
        //Color(Background)
        fill(144,238,144);
        //strokeWeight(0); 
      }
      if (_board[i][j] == 1){ 
        //Color(Normal)
        fill(255,140,0);
        strokeWeight(1);
      }
      if (_board[i][j] == 2){
        //Color(Normal)
        fill(255,140,0); 
        strokeWeight(1);
      }
      if (_board[i][j] == 3){
        //Color(Normal)
        fill(255,140,0); 
        strokeWeight(1);
      }
      rect(5+(j*25),5+(i*25),25,25);
    }
  }
}

//Color(Background)
//fill(144,238,144);

//Color(Normal)
//fill(255,140,0);

//Rounded(Edge)
//rect(5,5,200,50,0,0,0,20);

//Color(Blue Square)
//fill(75,205,255);

//Color(PAY DAY)
//fill(40,190,35);

//Color(STOP)
//fill(255,40,45);

//Color(Other Orange)
//fill(255,95,0);

//Background 0
//Square 3
//College 1
//No College 2
//Raised Platform 4