class Packy {

  // Declare position variables
  final int startx = 1;
  final int starty = 1;
  int cell_size = new Mappy().cell_width;
  float x = startx*cell_size;
  float y = starty*new Mappy().cell_height;
  int currentTileX = (int)floor((x+cell_size)/cell_size);
  int currentTileY = (int)floor(y/new Mappy().cell_height);
  float size = new Mappy().cell_height;
  boolean pacIsAtCenterX = true;
  boolean pacIsAtCenterY = true;
  
  // Declare collision variables
  boolean hitWallUp = false;
  boolean hitWallDown = false;
  
  
  // Color yellow
  color c = color(255, 250, 0);
  
  void updatePac(float xspeed, float yspeed) {
    this.x += xspeed;
    this.y += yspeed;
  }
  
  void drawPac() {
    noStroke();
    fill(c);
    ellipse(this.x, this.y , size, size);
  }
  //+ cell_size/2
  void colorSurroundingTiles(float x, float y) {
    // THERE IS A ROUNDING PROBLEM
    currentTileX = (int) x/cell_size;
    currentTileY = (int) y/cell_size;
    
    println("Pacman's position is: " + currentTileX + " and " + currentTileY);
    
    
     // Check if the tile above is path or a wall
     if(array[currentTileY-1][currentTileX] != 0 && pacIsAtCenterX) {
       fill(green);
       noStroke();
       rect(x, y - new Mappy().cell_height, cell_size, new Mappy().cell_height);
     } else {
       // 
       fill(red);
       noStroke();
       rect(x, y - new Mappy().cell_height, cell_size, new Mappy().cell_height);
     }
   
     // Check if the tile below is path or a wall
     if(array[currentTileY+1][currentTileX] != 0 && pacIsAtCenterX) {
       fill(green);
       noStroke();
       rect(x, y + new Mappy().cell_height, cell_size, new Mappy().cell_height);
     } else {
       fill(red);
       noStroke();
       rect(x, y + new Mappy().cell_height, cell_size, new Mappy().cell_height);
     }
     
     // Check if the tile to the left is path or a wall
     if(array[currentTileY][currentTileX-1] != 0 && pacIsAtCenterY) {
       fill(green);
       noStroke();
       rect(x - cell_size, y, cell_size, new Mappy().cell_height);
     } else {
       fill(red);
       noStroke();
       rect(x - cell_size, y, cell_size, new Mappy().cell_height);
     }
     
     // Check if the tile to the right is path or a wall
     if(array[currentTileY][currentTileX+1] != 0 && pacIsAtCenterY) {
       fill(green);
       noStroke();
       rect(x + cell_size, y, cell_size, new Mappy().cell_height);
     } else {
       fill(red);
       noStroke();
       rect(x + cell_size, y, cell_size, new Mappy().cell_height);
     }
   
  }
  
      String translateId(int id) {
        return id == 0 ? "wall" : "path";
      }
      
      void wallHasBeenHit() {
      hitWallUp = false;
      hitWallDown = false;
        // If there is a wall above
        // Set vertical speed to 0
        if(array[currentTileY-1][currentTileX] == 0 || array[currentTileY+1][currentTileX] == 0) {
          hitWallUp = true;
        } 
  
        if(array[currentTileY][currentTileX-1] == 0 || array[currentTileY][currentTileX+1] == 0) {
          hitWallDown = true;
        }
      }
      
      
      void isPacAtCenter() {
        pacIsAtCenterX = ((this.x) == (currentTileX*cell_size)) ? true : false;
        pacIsAtCenterY = ((this.y) == (currentTileY*cell_size)) ? true : false;
        println("Boolean values are: " + pacIsAtCenterX + " and " + pacIsAtCenterY);
      }
      
      
}
