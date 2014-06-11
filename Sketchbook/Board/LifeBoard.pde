// Board
Square[][] board;

// Number of columns and rows in the grid
int cols = 25;
int rows = 25;

void setup() {
  size(750,750);
  board = new Square[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      board[i][j] = new Square("board");
    }
  }
}

void draw() {
  background(144,238,144);
  // The counter variables i and j are also the column and row numbers and 
  // are used as arguments to the constructor for each object in the grid.  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();      
    }
  }
}

// A Square On The Board
class Square {
  // A cell object knows about its location in the grid as well as its size with the variables x,y,w,h.
  String _type;

  // Square Constructor
  Square( String type ){
    _type = type;
  }
  
  //Draw Square
  void display() {
    background(144,238,144);
    strokeWeight(3);
    
    
    //Color(Normal)
    fill(255,140,0);
    
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
    
    rect(5,5,50,20);
    
    //Background 0
    //Square 1
    //Payday 2
    //Trade Salary 3
    //Raised Platform 4 
  }
}

