class Packy {
  
  // Declare position variables
  final int startx = 1;
  final int starty = 1;
  float cell_size = new Mappy().cell_width;
  //int[][] array = new Mappy().array;
  float x = startx*cell_size+ cell_size/2;
  float y = starty*cell_size+ cell_size/2;
  
  // Color yellow
  color c = color(255, 250, 0);
  
  
  void updatePac(float xspeed, float yspeed) {
    this.x += xspeed;
    this.y += yspeed;
  }
  
  void drawPac() {
    noStroke();
    fill(c);
    ellipse(this.x , this.y , cell_size, cell_size);
  }
  

  // Match any point on the map to a tile
  int fx(float p) {
    
    
    // If the point is inside a tile
    if(p % cell_size != 0) {
      return floor((p/cell_size));
    } else {
    // The point is ON the grid lines
    return (int)(this.x/cell_size);
   }
  }
  
   // Match any point on the map to a tile
  int fy(float p) {
    
    // If the point is inside a tile
    if(p % cell_size != 0) {
      return floor((p/cell_size));
    } else {
    // The point is ON the grid lines
      return (int)(this.y/cell_size);
    }
  }

  
  boolean pointersAreCenteredX() {
    
    //println((this.x-(cell_size/2)) + " " + (this.x+(cell_size/2)));
    println("Pac is between: " + (this.x-(cell_size/2)) + " and " + (this.x+(cell_size/2)));
    println();
    
    // If horizontal points are in the same tile
    if( fx(this.x-(cell_size/2)) == fx(this.x+(cell_size/2)) ) {
    
       // Then pacman can check for walls
       println("yolo");
       return true;
    } else {
      return false;
    }
  }
  
   boolean pointersAreCenteredY() {
    
    // If vertical points are in the same tile
    if( fy(this.y-(cell_size/2)) == fy(this.y)+(cell_size/2)) {
    
       // Then pacman can check for walls
       println("y is centered");
       return true;
    } 
  return false;
  }
  
  boolean checkForWallRight() {
    
    // If the tile to the right is a wall
    if(array[fy(this.y)][fx(this.x)+1] == 0) {
      return false;
    } 
    
    return true;
  }
  
   boolean checkForWallLeft() {
    
    // If the tile to the left is a wall
    if(array[fy(this.y)][fx(this.x)-1] == 0) {
      return false;
    }
    
    return true;
  }
  
   boolean checkForWallUp() {
    
    // If the tile above is a wall
    if(array[fy(this.y)-1][fx(this.x)] == 0) {
      return false;
    }
    
    return true;
  }
  
   boolean checkForWallDown() {
    
    // If the tile below is a wall
    if(array[fy(this.y)+1][fx(this.x)] == 0) {
      return false;
    }
    
    return true;
  }
  
  
  


  
}
