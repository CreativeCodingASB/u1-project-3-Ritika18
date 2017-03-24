// A Cell object
class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  int x,y;   // x,y location
  int w,h;   // width and height
  float angle; // angle for oscillating brightness
  color alive = color(0, 200, 0);
  color dead = color(0);

  // Cell Constructor
  Cell(int tempX, int tempY, int tempW, int tempH, float tempAngle) 
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  } 
    
  // Oscillation means increase angle
  void oscillate() 
  {
    angle += 0.08;
  }

  void display()
  {
    stroke(255);
    // Color calculated using sine wave
    
    fill(50+200*sin(angle));
    //fill(random(255),random(255),random(255));
    rect(x,y,w,h); 
  }
  
}