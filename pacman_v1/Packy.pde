class Packy {

  // Declare the initial positions
  float start_pos_x = 14;
  float start_pos_y = 23;
  float x = new Map().cell_width*start_pos_x;
  float y = new Map().cell_height*start_pos_y;
  float size = (new Map().cell_width - 1);
  // Color yellow
  color c = color(255, 250, 0);
  
  // Retrieve Packy's current Tile
  
   
  void drawPac() {
    noStroke();
    fill(c);
    ellipse(x + new Map().cell_width/2 , y + new Map().cell_height/2, size, size);
  }

  void updatePac(float xspeed, float yspeed) {
    this.x += xspeed;
    this.y += yspeed;
  } 
   
  boolean canGoUp() {
    int pacTilex = (int) (this.x/new Map().cell_width);
    int pacTiley = (int) (this.y/new Map().cell_height);
    //println("Pac is at position: " + pacTilex);
    int identifier = new Map().map[pacTiley--][pacTilex];
    println(identifier == 0 ? "Wall above" : "Free to go up");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoLeft() {
    int pacTilex = (int) (this.x/new Map().cell_width);
    int pacTiley = (int) (this.y/new Map().cell_height);

    int identifier = new Map().map[pacTiley][pacTilex--];
    
    println(identifier == 0 ? "Wall on the left side" : "Free to go left");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoDown() {
    int pacTilex = (int) (this.x/new Map().cell_width);
    int pacTiley = (int) (this.y/new Map().cell_height);

    int identifier = new Map().map[pacTiley++][pacTilex];

    
    println(identifier == 0 ? "Wall below" : "Free to go below");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoRight() {
    int pacTilex = (int) (this.x/new Map().cell_width);
    int pacTiley = (int) (this.y/new Map().cell_height);

    int identifier = new Map().map[pacTiley][pacTilex++];

    
    println(identifier == 0 ? "Wall on the right" : "Free to go right");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  




  

}
