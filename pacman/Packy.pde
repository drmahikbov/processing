class Packy {

  // Declare the initial positions
  float start_pos_x = 12;
  float start_pos_y = 18;
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
    float pacTilex = this.x/new Map().cell_width;
    float pacTiley = this.y/new Map().cell_height;
    //println("Pac is at position: " + pacTilex);
    int identifier = new Map().mappy.get((int)pacTiley-1).get((int)pacTilex).id;
    
    println(identifier == 0 ? "Wall above" : "Free to go up");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoLeft() {
    float pacTilex = this.x/new Map().cell_width;
    float pacTiley = this.y/new Map().cell_height;

    int identifier = new Map().mappy.get((int)pacTiley).get((int)pacTilex-1).id;
    
    println(identifier == 0 ? "Wall on the left side" : "Free to go left");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoDown() {
    float pacTilex = this.x/new Map().cell_width;
    float pacTiley = this.y/new Map().cell_height;

    int identifier = new Map().mappy.get((int)pacTiley+1).get((int)pacTilex).id;
    
    println(identifier == 0 ? "Wall below" : "Free to go below");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  
  boolean canGoRight() {
    float pacTilex = this.x/new Map().cell_width;
    float pacTiley = this.y/new Map().cell_height;

    int identifier = new Map().mappy.get((int)pacTiley).get((int)pacTilex+1).id;
    
    println(identifier == 0 ? "Wall on the right" : "Free to go right");
    // True if not a wall
    return identifier == 0 ? false : true;
  }
  




  

}
