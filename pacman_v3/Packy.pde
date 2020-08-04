class Packy {
  
  // Declare position variables
  final int startx = 1;
  final int starty = 1;
  int cell_size = new Mappy().cell_width;
  //int[][] array = new Mappy().array;
  float x = startx*cell_size;
  float y = starty*cell_size;
  
  // Color yellow
  color c = color(255, 250, 0);
  
  
  void updatePac(float xspeed, float yspeed) {
    this.x += xspeed;
    this.y += yspeed;
  }
  
  void drawPac() {
    noStroke();
    fill(c);
    ellipse(this.x, this.y , cell_size, cell_size);
  }
  
  // Match any point on the map to a tile
  int f(float p) {
    
    // If the point is inside a tile
    if(p % cell_size != 0) {
      return floor((p/cell_size));
    } else {
    // The point is ON the grid lines
    // We must decide to which one he belongs to
    }
    return 5;
  }
  
  boolean pointersAreCenteredX() {
    
    // If horizontal points are in the same tile
    if( array[f(this.y)][f(this.x-(cell_size/2))] == array[f(this.y)][f(this.x+(cell_size/2))]) {
    
       // Then pacman can check for walls
       return true;
    } 
  return false;
  }
  
   boolean pointersAreCenteredY() {
    
    // If vertical points are in the same tile
    if( array[f(this.y-(cell_size/2))][f(this.x)] == array[f(this.y)+(cell_size/2)][f(this.x)]) {
    
       // Then pacman can check for walls
       return true;
    } 
  return false;
  }
  
}
