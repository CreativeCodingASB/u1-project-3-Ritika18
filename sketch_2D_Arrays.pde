// 2D Array of objects
Cell[][] grid;

// Number of columns and rows in the grid
int cols = width;
int rows = height/2;
float probabilityOfAliveAtStart = 15;

void setup() 
{
  fullScreen();
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*20,j*20,20,20,16);
      
      float state = random (100);
      if (state > probabilityOfAliveAtStart) 
      { 
        state = 0;
      }
      else 
      {
        state = 1;
      }
      grid[i][j] = int(state); // Save state of each cell
    }
  }
  background(0); // Fill in black in case cells don't cover all the window
}

void draw() {
  background(0);
  // The counter variables i and j are also the column and row numbers and 
  // are used as arguments to the constructor for each object in the grid.  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Oscillate and display each object
      grid[i][j].oscillate();
      grid[i][j].display();
      
      if(grid[i][j] == 1)
      {
        
      }
    }
  }
}