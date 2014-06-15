int[][] _board;
PImage img;
color c1,c2, c3, c4;
int X_AXIS = 2;
int Y_AXIS = 1;


void setup(){
  
  //Initialize Board
  size(1060,760);

  img = loadImage("plants.jpg");
  tint(255,187);
  image( img, 0, 0, width, height);
 
  //background(75,170,0);
  //background( img );
  noStroke();
  
  Board board = new Board();
  _board = board.getBoard();

  
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


  c3 = color( 152, 84, 151);
  c4 = color( 183, 96, 182 );
  
  stroke(0);
  strokeWeight(50);
  line( 150, 0, 150, 924 );
  
  setGradient( 0, 0, 150, 924, c3, c4, X_AXIS );
  

  rectMode(CENTER);
  
  noStroke();
  fill(47,196,83);
  rect( 40,250,60,50);
  
  fill(196,47,47);
  rect(120, 250,60,50);
  

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
