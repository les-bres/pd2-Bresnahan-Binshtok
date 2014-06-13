int[][] _board;
PImage img;
color c1,c2, c3, c4;
int X_AXIS = 2;
int Y_AXIS = 1;

public void getBoard() {

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

void setup(){
  
  //Initialize Board
  size(1060,760);

  img = loadImage("plants.jpg");
  tint(255,187);
  image( img, 0, 0, width, height);
 
  //background(75,170,0);
  //background( img );
  noStroke();
  getBoard();
  
  //Color Board
  for (int i = 0; i < 30; i++){
    for (int j = 0; j < 30; j++){
      if (_board[i][j] == 1){ 
        //Color(Normal)
        fill(255,175,0);
        //strokeWeight(1);
      }
      if (_board[i][j] == 2){
        //Color(Normal)
        fill(255,175,0); 
        //strokeWeight(1);
      }
      if (_board[i][j] == 3){
        //Color(Normal)
        fill(255,175,0); 
        //strokeWeight(1);
      }
      if (_board[i][j] == 5){
        //Color(Normal)
        fill(255,0,255); 
        //strokeWeight(1);
      }
      if (_board[i][j] != 0){
        rect(165+(j*25),5+(i*25),25,25);
      }
    }
  }
  //Sidebar
  
  c2 = color(142,144,206);
  c1 = color(66,72,232);
  
  stroke(0);
  strokeWeight(50);
  line( 910, 0, 910, 924 );
 
  setGradient( 910, 0, 200, 924, c1, c2, X_AXIS );


  c3 = color( 245, 79, 121);
  c4 = color( 196, 47, 50 );
  
  stroke(0);
  strokeWeight(50);
  line( 150, 0, 150, 924 );
  
  setGradient( 0, 0, 150, 924, c3, c4, X_AXIS );
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
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

//if (_board[i][j] == 0){
//Color(Background)
//fill(100,200,50);
//strokeWeight(0); 
//}
