import java.util.*;
import java.io.*;


int[][] _board;
Square colHead, noColHead, curSq;
PImage img, imgD;
color c1,c2, c3, c4;
int X_AXIS = 2;
int Y_AXIS = 1;
PFont f;
String curDisplay;
boolean yesOver = false;
boolean noOver = false;
int qNum;
Board board;
Cards cards = new Cards();

int yesX,yesY,noX,noY;
color yesC, noC, yesHigh, noHigh;



boolean buttonAns;
boolean ansGiven, curAns ;
char curAnsK;

boolean gameBegun;

Question[] startqs;

boolean needWrite, needMon;

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

      if (_board[i][j] < 10) {
          colTest( _board[i][j]);
      }
      else {
          colTest( _board[i][j] / 10 );
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
        rect(165+(j*25),5+(i*25),25,25,1,1,1,1);
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

  f = loadFont("AppleBraille-20.vlw");

  fill(89,180,100,255);
  rectMode(CENTER);
  rect( 980,150, 30,30);
  textAlign( CENTER );
  textFont(f,30);
  fill(0);  

  text( "$0", 980, 160);
  

  
  imgD = loadImage("dollar.jpg");
  image( imgD, 910, 50, 140, 60);

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
  

  textFont(f,10);
  fill(255);
  text("YES", 36,310);
  text("NO", 106,310);
  
  int[] angles = { 36, 36, 36, 36, 36, 36, 36, 36, 36, 36 };

  pieChart(150, angles);
  
  
  ansGiven = false;
  curAns = false;
  
  startqs = new Question[4];
  startqs[0] = new Question("Welcome to the Game of Life!\n\nAre you ready to begin?", true);
  startqs[1] = new Question("Would you like to play as a girl or boy?\n1=girl,2=boy", false);
  startqs[2] = new Question("What color car would you like?\n1=red,2=blue,3=orange,4=green", false);
  startqs[3] = new Question("Would you like to go to college?", true);
  
  needWrite = true;
  needMon = false;
  
  curSq = null;
  
  curDisplay = startqs[0].getMessage();
  
  //Cards cards = new Cards();
  
}

void draw() {
    
  if (needWrite) {
    noStroke();
    fill(0);
    rect(85,150, 140, 290);
    
    if (!gameBegun) {
      buttonAns = startqs[qNum].getAnsType();
    }
    
    textFont(f,15);
    textAlign(CENTER);
    fill(255);
    text(curDisplay, 85,160,140,290);
    needWrite = false;
  }
  
  if (needMon) {
    fill(117,146,196,255);
    rectMode(CENTER);
    rect( 980,150, 50,50);
    textAlign( CENTER );
    textFont(f,20);
    fill(0);
    
    String s = "$" + player.getMoney() ;
    text( s, 980, 160);
    needMon = false;
  
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
     else {
        turn();
     }
  }
         
}

void turn() {

  spin();
  int spaces = (int) (Math.random() * 10) +1;
  System.out.println(spaces+ "");
  
  for (int i = 0; i < spaces; i++) {
     curSq = curSq.getNext();
     if ( curSq.getType() == 1 ) {
         break;
     }
     if ( curSq.getType() == 5 ) {
       player.addMoney( player.getCareer().getSalary() );
       needMon = true;
     }
  }
  
  String message = "You spun a " + spaces + " and landed on ";
  
  if (curSq.getType() == 1) {
     //stopped
      if ( (curSq.getRow() == 15 && curSq.getCol() == 21) || (curSq.getRow() == 9 && curSq.getCol() == 27)) {
        message += "Career Time.";
        Career c = cards.getCareer();
        while ( c.DegreeNeeded() != player.getCollege() ) {
            c = cards.getCareer();
        }
        player.setCareer( c );
        message += "You became a " + c.getTitle() + ". ";
        message += "Your salary is " + c.getSalary();
      }
      else if ( curSq.getRow() == 2 && curSq.getCol() ==21 ) {
       message += "Adopt a Pet.";
       Pet p = cards.getPet();
       player.setPet( p );
       player.addMoney( -1 * p.getFee() );
       message += "You adopted a " + p.getName();
       message += ". This cost you $" + p.getFee();
       needMon = true;
      }
      else {
        message += "Buy a House.";
        House h = cards.getHouse();
        player.setHouse( h );
        player.addMoney( -1 * h.getCost() );
        message += "You moved into a " + h.getName();
        message += ". This cost you $" + h.getCost();
        needMon = true;
      }   
  }
  if (curSq.getType() == 2) {
    //draw raffle card
    message += "Raffle.";
    Raffle c = cards.getRaffle();
    int num = c.getNum();
    message += "if you spin the same number again, you get $1000";
  }
  if (curSq.getType() == 3) {
     //spin again
     message += "Spin Again.";
  }
  if (curSq.getType() == 4) {
    message += "Life Tile. ";
    Tile t = cards.getTile();
    message += t.getMessage() + ", You get $" + t.getValue();
    player.addMoney( t.getValue() );
    // life tile
  }
  if (curSq.getType() == 5) {
    //money, do nothing
  }
  if (curSq.getType() == 6) {
    message += "Expense.";
    Expense e = cards.getExpense();
    message += e.getMessage() + ", You lose $" + e.getCost();
    player.addMoney( -1 * e.getCost() );
    // draw expense
  }
    
  
  
  curDisplay = message + "\nAre you ready to spin again?";
  needWrite = true;
  ansGiven = false;

}

int spin(){
  int end = millis() + 2000;
  int start = 0;
  while (millis() < end){
    start = int(random(9)) + 1;
    int time = millis() + 250;
    while (time > millis()){
    }
    int[] angles = { 36, 36, 36, 36, 36, 36, 36, 36, 36, 36 };
    spin(150,angles);
    time += 250;
  }
  return start;
}

void pieChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    if (i == 0){
      fill(255,218,33);
    }
    if (i == 1){
      fill(255,145,21);
    }
    if (i == 2){
      fill(255,72,10);
    }
    if (i == 3){
      fill(209,0,0);
    }
    if (i == 4){
      fill(140,17,68);
    }
    if (i == 5){
      fill(74,34,136);
    }
    if (i == 6){
      fill(17,51,204);
    }
    if (i == 7){
      fill(0,50,60);
    }
    if (i == 8){
      fill(0,131,0);
    }
    if (i == 9){
      fill(0,255,0);
    }
    //255,218,33
    arc((width/2)+45, (height/2)+65, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
}

void spin(float diameter, int[] data) {
  float lastAngle = 0;
  int start = int(random(9));
  for (int i = start; i < data.length; i++) {
    if (i == 0){
      fill(255,218,33);
    }
    if (i == 1){
      fill(255,145,21);
    }
    if (i == 2){
      fill(255,72,10);
    }
    if (i == 3){
      fill(209,0,0);
    }
    if (i == 4){
      fill(140,17,68);
    }
    if (i == 5){
      fill(74,34,136);
    }
    if (i == 6){
      fill(17,51,204);
    }
    if (i == 7){
      fill(0,50,60);
    }
    if (i == 8){
      fill(0,131,0);
    }
    if (i == 9){
      fill(0,255,0);
    }
    //255,218,33
    arc((width/2)+45, (height/2)+65, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
  for (int i = 0; i < start; i++) {
    if (i == 0){
      fill(255,218,33);
    }
    if (i == 1){
      fill(255,145,21);
    }
    if (i == 2){
      fill(255,72,10);
    }
    if (i == 3){
      fill(209,0,0);
    }
    if (i == 4){
      fill(140,17,68);
    }
    if (i == 5){
      fill(74,34,136);
    }
    if (i == 6){
      fill(17,51,204);
    }
    if (i == 7){
      fill(0,50,60);
    }
    if (i == 8){
      fill(0,131,0);
    }
    if (i == 9){
      fill(0,255,0);
    }
    //255,218,33
    arc((width/2)+45, (height/2)+65, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
}

void processBegin() {
  if (qNum == 0) {
    curDisplay = startqs[1].getMessage();
  }
  
  else if (qNum == 1) {
    if (curAnsK == 1 || curAnsK == 2) {
      gender = curAnsK;
    }
    else {
      gender = 2;
    }
    curDisplay = startqs[2].getMessage();
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
    curDisplay = startqs[3].getMessage();
  }
   
  else if (qNum == 3) {
    collegeBound = curAns;
    if (collegeBound) {
      curSq = colHead;
    }
    else {
        curSq = noColHead;
    }
    player = new Player(gender, collegeBound);
    gameBegun = true;
    needMon = true;
    //tracePath();
    curDisplay = "Are you ready to spin?";
  }    
   
  qNum++;
  noStroke();
  fill(0);
  rect(85,150, 140, 290);
  needWrite = true;
  ansGiven = false;
}
//
//void tracePath(){
//  int time;
//  time = millis();
//  while;
//}
    
void update(int x, int y) {
  if ( overRect(yesX, yesY, 60,50) ) {
    yesOver = true;
    noOver = false;
  } else if ( overRect(noX, noY, 50, 60) ) {
    noOver = true;
    yesOver = false;
  }
   else {
    yesOver = noOver = false;
  }
}

void colTest( int i ) {
    if (i == 1){ 
        //Color(Normal)
        fill(224,41,53);
        //strokeWeight(1);
    }
    if (i == 2){
        //Color(Normal)
        fill(40,232,160); 
        //strokeWeight(1);
    }
    if (i == 3) {
        fill(176,66,216);
    }
    if (i == 4){
        //Color(Normal)
        fill(255,175,0); 
        //strokeWeight(1);
    }
    if (i == 5) {
       fill(85,188,89);
    }
    if (i == 6) {
        fill(180,130,89);
    }
        
    if (i == 9){
        //Color(Normal)
        fill(255,0,255); 
        //strokeWeight(1);
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

void pause(int seconds){
  Date start = new Date();
  Date end = new Date();
  while(end.getTime() - start.getTime() < seconds * 1000){
      end = new Date();
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
