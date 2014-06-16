int[][] _board;
Square colHead, noColHead;
PImage img;
color c1,c2, c3, c4;
int X_AXIS = 2;
int Y_AXIS = 1;
PFont f;
String curDisplay;
boolean yesOver = false;
boolean noOver = false;
int qNum;

int yesX,yesY,noX,noY;
color yesC, noC, yesHigh, noHigh;


boolean buttonAns;
boolean ansGiven, curAns ;
char curAnsK;

boolean gameBegun;

Question[] startqs;

boolean needWrite;

// start out variables
int gender;
color carC;
boolean collegeBound;
Player player;


void setup(){
  qNum = 0;
  
  //Initialize Board
  size(1060,760);

  img = loadImage("plants.jpg");
  tint(255,187);
  image( img, 0, 0, width, height);
 

  //noStroke();
  stroke(75);
  Board board = new Board();
  _board = board.getBoard();

  colHead = board.getColHead();
  noColHead = board.getNoColHead();
  
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
        
        if (_board[i][j] > 9) {
          if (_board[i][j] % 10 == 1) {
            rect(165+(j*25),5+(i*25),25,25,20,1,1,1);
          }
          else if (_board[i][j] % 10 == 2) {
            rect(165+(j*25),5+(i*25),25,25,1,20,1,1);
          }
          else if (_board[i][j] % 10 == 3) {
            rect(165+(j*25),5+(i*25),25,25,1,1,20,1);
          }
          else if (_board[i][j] % 10 == 4) {
            rect(165+(j*25),5+(i*25),25,25,1,1,1,20);
          }
        }
        else {  
        rect(165+(j*25),5+(i*25),25,25);
        }
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
  
  
  yesC = color(47,196,83);
  noC = color(196,47,47);
  
  noHigh = color(222,47,47);
  yesHigh = color(128,234,153);

  yesX = 50;
  yesY = 270;
  
  noX = 120;
  noY = 270;
  
  
  rectMode(CENTER);
  
  noStroke();
  fill(0);
  rect(85,160, 140, 310);
  
  
  fill(yesC);
  rect( yesX,yesY,60,50);
  
  fill(noC);
  rect(noX, noY,60,50);
  
  f = loadFont("AppleBraille-20.vlw");
  textFont(f,10);
  fill(255);
  text("YES", 36,310);
  text("NO", 106,310);
  
  
  ansGiven = false;
  curAns = false;
  
  startqs = new Question[4];
  startqs[0] = new Question("Welcome to the Game of Life!\n\nAre you ready to begin?", true);
  startqs[1] = new Question("Would you like to play as a girl or boy?\n1=girl,2=boy", false);
  startqs[2] = new Question("What color car would you like?\n1=red,2=blue,3=orange,4=green", false);
  startqs[3] = new Question("Would you like to go to college?", true);
  
  needWrite = true;
  
  
}


void draw() {
    
  if (needWrite) {
    if (!gameBegun) {
      curDisplay = startqs[qNum].getMessage();
      buttonAns = startqs[qNum].getAnsType();
    }
    
    textFont(f,15);
    textAlign(CENTER);
    fill(255);
    text(curDisplay, 85,160,140,290);
    needWrite = false;
  }
  
  update(mouseX,mouseY);
  
  if (yesOver) {
    fill(yesHigh);
  }
  else {
    fill(yesC);
  }
  
  rect( yesX,yesY,60,50);
  
  if (noOver) {
    fill(noHigh);
  }
  else {
    fill(noC);
  }
  
  rect( noX,noY,60,50);
  
  if (ansGiven) {
     if (!gameBegun) {
         processBegin();
     }
  }
         
}

void processBegin() {
  if (qNum == 0) {
  }
  
  else if (qNum == 1) {
    if (curAnsK == 1 || curAnsK == 2) {
      gender = curAnsK;
    }
    else {
      gender = 2;
    }
  }
  else if (qNum == 2) {
    if (!(curAnsK > 0 && curAnsK < 5)) {
      carC = color(216,50,56);
    }
    else {
      if ( curAnsK == 1) {
        carC = color(216,50,56);
      }
      if (curAnsK == 2) {
        carC = color(44,66,255);
      }
      if (curAnsK == 3) {
        carC = color(237,83,26);
      }
      else {
        carC = color(29,64,40);
      }
    }
  }
   
  else if (qNum == 3) {
    collegeBound = curAns;
    player = new Player(gender, collegeBound);
    gameBegun = true;
  }    
   
  qNum++;
  noStroke();
  fill(0);
  rect(85,150, 140, 290);
  needWrite = true;
  ansGiven = false;
}
    
void update(int x, int y) {
  if ( overRect(yesX, yesY, 60,50) ) {
    yesOver = true;
    noOver = false;
  } else if ( overRect(noX, noY, 50, 60) ) {
    noOver = true;
    yesOver = false;
  } else {
    yesOver = noOver = false;
  }
}


boolean overRect(int x, int y, int width, int height)  {
  
  if (mouseX >= (x-30) && mouseX <= (x-30)+width && 
      mouseY >= (y-25) && mouseY <= (y-25)+height) {
    return true;
  } else {
    return false;
  }
}


void mousePressed(){
  if (buttonAns) {
    if (yesOver || noOver) {
      ansGiven = true;
    }
  }
  if (yesOver) {
    curAns = true;
  }
  if (noOver) {
    curAns = false;
  }
}

void keyPressed() {
  if (!buttonAns) {
    curAnsK = key;
    ansGiven = true;
  }
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
